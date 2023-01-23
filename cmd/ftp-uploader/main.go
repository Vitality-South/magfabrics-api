package main

import (
	"bytes"
	"flag"
	"fmt"
	"os"

	"github.com/jlaffaye/ftp"
	"github.com/pelletier/go-toml/v2"
)

type SessionInfo struct {
	Hostname      string   `toml:"hostname"`
	Port          int64    `toml:"port"`
	Username      string   `toml:"username"`
	Password      string   `toml:"password"`
	FilesToUpload []string `toml:"files_to_upload"`
}

func useFTPServer(creds SessionInfo) error {
	c, cerr := ftp.Dial(fmt.Sprintf("%s:%d", creds.Hostname, creds.Port))

	if cerr != nil {
		return cerr
	}

	lerr := c.Login(creds.Username, creds.Password)

	if lerr != nil {
		return lerr
	}

	for _, v := range creds.FilesToUpload {
		// store file on ftp server
		f, ferr := os.ReadFile(v)

		if ferr != nil {
			return ferr
		}

		reader := bytes.NewReader(f)

		serr := c.Stor(v, reader)

		if serr != nil {
			return serr
		}
	}

	return c.Quit()
}

func main() {
	// load command line arguments
	config := flag.String("config", "", "configuration file")
	host := flag.String("hostname", "", "ftp server host name")
	prt := flag.Int64("port", 0, "ftp server port")
	username := flag.String("username", "", "ftp username")
	password := flag.String("password", "", "ftp password")

	flag.Parse()

	creds := SessionInfo{}

	// load config file if it was provided
	if *config != "" {
		f, ferr := os.ReadFile(*config)

		if ferr != nil {
			panic(fmt.Sprintf("can not load config file: %s\n", *config))
		}

		cerr := toml.Unmarshal(f, &creds)

		if cerr != nil {
			panic(fmt.Sprintf("config file error: %v", cerr))
		}
	}

	// possibly use command line arguments to override config file
	if *host != "" {
		creds.Hostname = *host
	}

	if *prt != 0 {
		creds.Port = *prt
	}

	if *username != "" {
		creds.Username = *username
	}

	if *password != "" {
		creds.Password = *password
	}

	creds.FilesToUpload = append(creds.FilesToUpload, flag.Args()...)

	// if neither command line arguments or config file loaded data we need,
	// then panic
	if creds.Hostname == "" {
		panic("ftp server hostname is empty")
	}

	if len(creds.FilesToUpload) < 1 {
		panic("there are no files to upload")
	}

	// now do the work
	workerr := useFTPServer(creds)

	if workerr != nil {
		panic(fmt.Sprintf("error uploading files: %v", workerr))
	}
}
