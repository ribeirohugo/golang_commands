#!/bin/sh

## Valid to Ubuntu 22

# Windows user name
export WINDOWS_USER=username

# Windows project path
export WINDOWS_PATH=Users/$WINDOWS_USER/Documents/Projects/golang_commands

# Mode to project path
cd /mnt/c/$WINDOWS_PATH || exit

# Update apt repo
sudo apt update

# Install golang package
sudo apt install golang-go

# Run linter command
golangci-lint run ./... -v | cat > lint_errors.txt

# Run test command
go test ./... | cat > test_file_output.txt
