#!/bin/bash

TOOL_BASE=$HOME/.scheleton-mocha-env

if [ ! -d $TOOL_BASE ]; then
    mkdir $TOOL_BASE
    echo
    echo Directory $TOOL_BASE created.
    echo
fi

cp scheleton-mocha-env $TOOL_BASE
cp change_script_test_mocha.pl $TOOL_BASE 
cp -R files $TOOL_BASE

cat << MESSAGE
Installation completed!
Add below into your rcfile(.bashrc, .zshrc, etc.)
--------------------------------------------
export PATH=\$PATH:\$HOME/.scheleton-mocha-env
export SCHELETON_MOCHA_ENV_BASE=$TOOL_BASE

MESSAGE

