# Golang Commands
This repo holds important Go commands, scripts and Go issue solving documentation.

## Tutorials

🔗 [Git Windows Authentication](git_windows_auth.md)

## Install Go in WSL
Run ``install.sh`` command.

## Build 
Generates the binary file for ``hello`` cmd method.

``env GOOS=<os> GOARCH=<architecture> go build cmd/hello/main.go``

- ``<os>`` - could be ``windows``, ``linux`` or ``darwin`` for Mac.
- ``<architecture>`` - could be ``arm``, ``386`` for x86 and ``amd64`` for x64.

## WSL Linter
Run the linter script to generate a file with the output of ``golangci`` results, but update ``WINDOWS_PATH`` variable
before. Use:

* ``linter-wsl/linter.sh`` for Ubuntu 20 or older
* ``linter-wsl/linter-22.sh`` for Ubuntu 22
