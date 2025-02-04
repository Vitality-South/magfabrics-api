package log

import (
	"fmt"
	"io"
	"log"
)

type Logger struct {
	debug  bool
	writer io.Writer
	logger *log.Logger
}

func NewLogger(writer io.Writer, debugEnabled bool) *Logger {
	return &Logger{
		debug:  debugEnabled,
		writer: writer,
		logger: log.New(writer, "", log.LstdFlags),
	}
}

func (l *Logger) Info(msg string) {
	l.logger.Println(msg)
}

func (l *Logger) Debug(msg string) {
	if !l.debug {
		return
	}

	l.logger.Println(msg)
}

func (l *Logger) Error(msg string) {
	l.logger.Println(msg)
}

func (l *Logger) Infof(format string, v ...any) {
	l.logger.Println(fmt.Sprintf(format, v...))
}

func (l *Logger) Debugf(format string, v ...any) {
	if !l.debug {
		return
	}

	l.logger.Println(fmt.Sprintf(format, v...))
}

func (l *Logger) Errorf(format string, v ...any) {
	l.logger.Println(fmt.Sprintf(format, v...))
}

func (l *Logger) Print(v ...interface{}) {
	l.logger.Println(v...)
}