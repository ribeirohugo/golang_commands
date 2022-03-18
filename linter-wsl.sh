# Windows project path
export WINDOWS_PATH=Users/username/Documents/Projects/project_name

# Mode to project path
cd /mnt/c/$WINDOWS_PATH || exit

# Initialize Go variables needed
export GOROOT=/usr/local/go
export GOPATH=/mnt/c/Users/mindera/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export GOPRIVATE=github.com/ribeirohugo/golang_commands
export GOPROXY=https://proxy.golang.org,direct
export GO111MODULE=on

# Run linter command
golangci-lint run ./... -v | cat > lint_errors.txt

# Run test command
go test ./... | cat > test_file_output.txt
