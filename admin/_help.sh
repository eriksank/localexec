#!/usr/bin/env bash
#-------------------------------------------------------
#      admin
#      Written by Erik Poupaert, Cambodia
#      (c) 2018
#      Licensed under the LGPL
#-------------------------------------------------------
cat <<EOF
Usage
    ./admin.sh [cmd]

    == develop ==

        push  [msg]             update github repo with optional commit message
        clean                   remove all artifacts built

    == publish ==

        rock                    send rock to luarocks repo
EOF

