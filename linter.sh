#!/bin/sh

# Git project name
export PROJECT_NAME=golang_commands

# Windows user name
export WINDOWS_USER=username

# Windows project path
export WINDOWS_PATH=Users/$WINDOWS_USER/Documents/Projects/$PROJECT_NAME

# Mode to project path
cd /mnt/c/$WINDOWS_PATH || exit

# Initialize Go variables needed
export GOROOT=/usr/local/go
export GOPATH=/mnt/c/Users/$WINDOWS_USER/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export GOPRIVATE=github.com/ribeirohugo/$PROJECT_NAME
export GOPROXY=https://proxy.golang.org,direct
export GO111MODULE=on

# Run linter command
golangci-lint run ./... -v | cat > lint_errors.txt

# Run test command
go test ./... | cat > test_file_output.txt
