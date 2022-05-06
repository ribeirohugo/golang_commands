# Golang Commands
This repo holds important Go commands, scripts and Go issue solving documentation.

## Tutorials

🔗 [Git Windows Authentication](git_windows_auth.md)

## Install Go in WSL
Run the appropriate ``install`` script to install Go in your machine:

* ``install/go.sh`` for Ubuntu WSL Go installation.
* ``install/go_x86.sh`` for Ubuntu WSL x86 Go installation.

## Build 
Generates the binary file for ``hello`` cmd method.

``env GOOS=<os> GOARCH=<architecture> go build cmd/hello/main.go``

- ``<os>`` - could be ``windows``, ``linux`` or ``darwin`` for Mac.
- ``<architecture>`` - could be ``arm``, ``386`` for x86 and ``amd64`` for x64.

## WSL Linter
Run the ``linter.sh`` to generate the lint checkup output file, based on ``.golangci.yaml`` configs.

Before to run, update the following variables:
* ``PROJECT_NAME`` for Git project name.
* ``WINDOWS_PATH`` with the project path in your Windows machine.
