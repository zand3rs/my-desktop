My desktop settings
===================

## Dependencies

* [Xcode](https://developer.apple.com/xcode/)
* [MacPorts](https://www.macports.org/)
  * gnu coreutils
  
    ```  
    $ sudo port install coreutils
    ```
* [Git](http://git-scm.com/)


## Quick Install

1. Copy mac/home/* to home directory.
   
   ```
   $ cd mac/home/
   $ cp bashrc ~/.bashrc
   $ cp bash_profile ~/.bash_profile
   $ cp profile ~/.profile
   $ cp vimrc ~/.vimrc
   $ cp -RPpf vim ~/.vim
   ```
2. Install terminal profile.
   Open terminal preferences and add mac/terminal/IR_Black/zanders.terminal
3. Install git scripts
   
   ```
   $ cd scripts/git/
   $ ./git-config.sh -g
   ```
