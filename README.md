My desktop settings
===================

## Dependencies

* [Xcode](https://developer.apple.com/xcode/)
* [Homebrew](https://brew.sh/) or [MacPorts](https://www.macports.org/)
* [Git](https://git-scm.com/)
* [Git GUI](https://git-scm.com/docs/git-gui)
* [GNU Coreutils](http://www.gnu.org/software/coreutils/coreutils.html)
* [Generate SSH Key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)


## Quick Install

1. Install Homebrew and/or MacPorts

   ```sh
   # Homebrew
   $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

   # MacPorts
   # Checkout the ff. link for instructions: https://www.macports.org/install.php
   ```

2. Install Coreutils

   ```sh
   # Homebrew
   $ brew install coreutils

   # MacPorts
   $ sudo port install coreutils

   # PATH and MANPATH settings (brew is configured by default in .bashrc)
   #
   # using brew
   # export PATH=/usr/local/opt/coreutils/libexec/gnubin:/opt/local/bin:/opt/local/sbin:$PATH
   # export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
   #
   # using port
   # export PATH=/opt/local/libexec/gnubin:/opt/local/bin:/opt/local/sbin:$PATH
   # export MANPATH=/opt/local/libexec/gnuman:$MANPATH
   ```

3. Setup home directory.

   ```sh
   $ cd mac/home/
   $ cp bashrc ~/.bashrc
   $ cp bash_profile ~/.bash_profile
   $ cp profile ~/.profile
   $ cp vimrc ~/.vimrc
   $ cp -RPpf vim ~/.vim
   $ cp tigrc ~/.tigrc
   $ cp pairs ~/.pairs
   ```
   
4. Install terminal profile.
   Open terminal preferences and import mac/terminal/IR_Black/zanders.terminal

5. Install git scripts

   ```sh
   $ cd scripts/git/
   $ ./git-config.sh -g
   ```

6. Install tig

   ```sh
   $ brew install tig
   ```

7. Install Node.js

   ```sh
   $ brew install node
   ```

8. Install NVM

   ```sh
   $ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
   ```

9. Install git-gui

   ```sh
   $ git clone git://repo.or.cz/git-gui.git
   $ cd git-gui
   $ make
   $ sudo make install
   ```
