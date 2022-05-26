# Git Linux SSH Authentication

**Git Linux Authentication** documentation holds solutions to common questions and issues when trying to authenticate
to Git platform, including SSH issues. This is useful when trying to fetch Go dependencies from private repos.

## Generate SSH keys
To generate SSH keys, first install OpenSSH in windows.

Then run following command to generate an SSH key, filling needed variable values:

``ssh-keygen -t <type> -C "<email>" -N "<passphrase>" -f "<filename>"``

- ``<type>`` - in this field the algorithm you may choose some of the most common ones as ``ssh-rsa``, ``ed25519`` or
``ecdsa``.
- ``<email>`` - insert your e-mail here.
- ``<passphrase>`` - insert a passphrase to your key.
- ``<filename>`` (optional) - define a name for your key file or leave it empty.

An example of this would be:
``ssh-keygen -t ed25519 -C "example" -N ""``

## Call SSH
Update your Git repositories to be called by SSH instead of HTTPS in your machine, by editing ``.gitconfig`` ( just run
``git config --global --edit``). Then add your git addresses to that file, as in the following example:

```
[url "ssh://git@github.com/"]
    insteadOf = https://github.com/
[url "ssh://git@bitbucket.org/"]
    insteadOf = https://bitbucket.org/
```

Add SSH keys:

``ssh-add "~/.ssh/github"``
``ssh-add "~/.ssh/bitbucket``

Run ``ssh-keyscan`` to add your Git repositories to ``known_hosts`` file:
``ssh-keyscan -H github.com >> ~/.ssh/known_hosts``
``ssh-keyscan -H bitbucket.org >> ~/.ssh/known_hosts``

## Startup
To avoid the need of writing/pasting the same commands everytime, you can add them to be initialized when the SO does.

First, run ``sudo nano ~/.bashrc`` to edit startup running commands. Then add your SSH commands, here:

```
# init SSH agent
eval `ssh-agent -s`
ssh-add "$HOME/.ssh/github"
ssh-add "$HOME/.ssh/bitbucket
```

Also it is a good idea to add Go configs when initializing. Add this to the end of file:

```
# Go lang init configs
export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOROOT/bin"
export PATH="$PATH:$HOME/go/bin"
```

