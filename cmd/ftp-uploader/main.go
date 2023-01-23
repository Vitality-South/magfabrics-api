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
	Hostname      string          `toml:"hostname"`
	Port          int64           `toml:"port"`
	Username      string          `toml:"username"`
	Password      string          `toml:"password"`
	FilesToUpload []FilesToUpload `toml:"files_to_upload"`
}

type FilesToUpload struct {
	WriterPath string `toml:"write_path"`
	ReaderPath string `toml:"read_path"`
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

	for _, fu := range creds.FilesToUpload {
		// store file on ftp server
		f, ferr := os.ReadFile(fu.ReaderPath)

		if ferr != nil {
			return ferr
		}

		reader := bytes.NewReader(f)

		serr := c.Stor(fu.WriterPath, reader)

		if serr != nil {
			return serr
		}
	}

	return c.Quit()
}

func main() {
	// load command line arguments
	config := flag.String("config", "", "configuration file")

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
