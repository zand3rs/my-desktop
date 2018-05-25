#!/bin/bash

BASEDIR=${0%/*}
GIT_OPTS=""

# do not show getopts errors...
OPTERR=0

while getopts g FLAG; do
    case $FLAG in
        g)
            GIT_OPTS="$GIT_OPTS --global"
            ;;
        ?)
            echo "$0 [-g]"
            exit 1
    esac
done

function install_scripts {
    local GIT_SCRIPTS="$BASEDIR/git_scripts"

    for DIR in "/tmp/bin" "/usr/local/bin" "/usr/bin"; do
        if [ -d $DIR ]; then
            if [ -d "$GIT_SCRIPTS" ]; then
                while true; do
                    read -p "Do you wish to install git_scripts? [y/n] " ANS
                    case $ANS in
                        [Yy])
                            sudo \cp -RPpf $GIT_SCRIPTS/* $DIR/
                            break
                            ;;
                        [Nn])
                            exit 1
                            ;;
                    esac
                done
            fi
            return
        fi
    done
    exit 0
}

#-----------------------------------------------------------------------------

git config $GIT_OPTS core.ignorecase false
git config $GIT_OPTS color.status auto
git config $GIT_OPTS color.diff auto
git config $GIT_OPTS alias.st status
git config $GIT_OPTS alias.co checkout
git config $GIT_OPTS alias.br branch
git config $GIT_OPTS alias.ci commit
git config $GIT_OPTS alias.df diff
git config $GIT_OPTS alias.lg log
git config $GIT_OPTS push.default current
git config $GIT_OPTS push.followTags true
git config $GIT_OPTS branch.master.rebase true
git config $GIT_OPTS branch.autosetuprebase always

install_scripts

