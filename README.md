Dotfiles
========

The configuration files in this repository are managed using GNU Stow.

For each configuration in my home directory, there is a corresponding
folder under the dotfiles repository. The structure under this folder
mirrors the way the files are organized under the home directory.

For example:

    dotfiles
    ├── gdbinit
    ├── hgrc
    ├── README.txt
    ├── vimrc
    ├── terminalrc
    ├── muttrc
    ├── mbsyncrc
    └── zshrc

Each directory contains a corresponding dotfile. The directories
themselves are organized as the dotfiles are, under the /home.

Using Stow, we can create symlinks from these directories to the
target (~) directory.

	$ stow hgrc

This would symlink the contents of hgrc (.hgrc) to `/home/.hgrc`.

Note: xfce-terminal's `terminalrc` presented a bit of a problem to
this scheme because it is placed inside `~/.config` instead of in
$HOME itself. I've added a small script which updates all dotfiles
in the home directory.
