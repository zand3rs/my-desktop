My desktop settings
===================

## Dependencies

* [Xcode](https://developer.apple.com/xcode/)
* [MacPorts](https://www.macports.org/)
* [Homebrew](https://brew.sh/)
  * gnu coreutils
    ```sh
    # port
    $ sudo port install coreutils
    
    # brew
    $ brew install coreutils
    ```
* [Git](http://git-scm.com/)


## Quick Install

1. Copy mac/home/* to home directory.
   
   ```sh
   $ cd mac/home/
   $ cp bashrc ~/.bashrc
   $ cp bash_profile ~/.bash_profile
   $ cp profile ~/.profile
   $ cp vimrc ~/.vimrc
   $ cp -RPpf vim ~/.vim
   ```
   
   * bashrc update for coreutils installed using brew
   ```sh
   # use gnu coreutils
   # using port
   # export PATH=/opt/local/libexec/gnubin:/opt/local/bin:/opt/local/sbin:$PATH
   # using brew
   export PATH=/usr/local/opt/coreutils/libexec/gnubin:/opt/local/bin:/opt/local/sbin:$PATH
   
   # add coreutils to manpath
   export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
   ```

2. Install terminal profile.
   Open terminal preferences and add mac/terminal/IR_Black/zanders.terminal
3. Install git scripts
   
   ```
   $ cd scripts/git/
   $ ./git-config.sh -g
   ```
