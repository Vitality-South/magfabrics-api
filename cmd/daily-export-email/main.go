package main

import (
	"bytes"
	"context"
	"log"
	"os"
	"os/exec"
	"time"

	mail "github.com/wneessen/go-mail"
)

const (
	csvGeneratorGo = "/home/magfabricsapi/bin/csv-generator-go"
)

func main() {
	cmd := exec.Command(csvGeneratorGo, "-ignorediscontinued", "-apikey", os.Getenv("CSV_API_KEY"))
	out, err := cmd.Output()
	if err != nil {
		log.Fatalf("running csv-generator-go failed: %v", err)
	}

	client, err := mail.NewClient(os.Getenv("SMTP_HOST"),
		mail.WithPort(465),
		mail.WithSMTPAuth(mail.SMTPAuthPlain),
		mail.WithUsername(os.Getenv("SMTP_USER")),
		mail.WithPassword(os.Getenv("SMTP_PASSWORD")),
		mail.WithSSL(),
	)
	if err != nil {
		log.Fatalf("creating mail client failed: %v", err)
	}

	msg := mail.NewMsg()

	if err := msg.EnvelopeFrom(os.Getenv("SMTP_FROM_ADDR")); err != nil {
		log.Fatalf("setting From failed: %v", err)
	}

	if err := msg.FromFormat(os.Getenv("SMTP_FROM_NAME"), os.Getenv("SMTP_FROM_ADDR")); err != nil {
		log.Fatalf("setting From failed: %v", err)
	}

	if err := msg.To(os.Getenv("TO_ADDR")); err != nil {
		log.Fatalf("setting To failed: %v", err)
	}

	msg.Subject("MagFabrics daily export")
	msg.SetBodyString(mail.TypeTextPlain, "MagFabrics daily export attached")
	msg.SetCharset(mail.CharsetUTF8)
	msg.SetDate()
	msg.SetMessageID()

	// attach the CSV from the command output
	if err := msg.AttachReader("fabrics.csv", bytes.NewReader(out)); err != nil {
		log.Fatalf("adding attachment failed: %v", err)
	}

	ctx, cancel := context.WithTimeout(context.Background(), 60*time.Second)
	defer cancel()
	if err := client.DialAndSendWithContext(ctx, msg); err != nil {
		log.Fatalf("sending mail failed: %v", err)
	}

	log.Println("email sent")
}
