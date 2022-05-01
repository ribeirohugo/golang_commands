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
Run ``linter-wsl.sh`` command, but update ``WINDOWS_PATH`` variable before.
