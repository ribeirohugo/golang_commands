# Git Windows Authentication

**Git Windows Authentication** documentation holds solutions to common questions and issues when trying to authenticate
to Git platform. This is useful when trying to fetch Go dependencies from private repos.

## Git credentials

Git credentials in Windows are stored in ``C:\Users\<username>\.git-credentials`` directory. They require your Git 
``username`` and a ``password``. You should generate a Git token to use as your password.

Git credentials have the following format:

- ``https://<user>:<password>@bitbucket.org``

- ``https://<user>:<password>@github.com``

You can add a wildcard to your organization repos, changing ``<organization>`` field:

- ``https://<user>:<password>@github.com/<organization>/*``

## Generate SSH keys

To generate SSH keys, first install OpenSSH in windows.

Then run following command to generate an SSH key, filling needed variable values:

``ssh-keygen -t <type> -C "<email>" -N "<passphrase>" -f "<filename>"``

- ``<type>`` - in this field the algorithm you may choose some of the most common ones as ``ssh-rsa``, ``ed25519`` or
``ecdsa``.
- ``<email>`` - insert your e-mail here.
- ``<passphrase>`` - insert a passphrase to your key.
- ``<filename>`` (optional) - define a name for your key file or leave it empty.

**Fore more tags:** https://www.ssh.com/academy/ssh/keygen#command-and-option-summary

Your key will be available in ``C:\Users\<username>\.ssh``.
- ``<username>`` - your Windows username.

Then you may copy and paste your SSH key into [Github](https://github.com/settings/keys),
[Bitbucket](https://bitbucket.org/account/settings/ssh-keys/), or wtv, settings.

## 
