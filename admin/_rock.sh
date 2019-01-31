#!/usr/bin/env bash
#-------------------------------------------------------
#      admin
#      Written by Erik Poupaert, Cambodia
#      (c) 2018
#      Licensed under the LGPL
#-------------------------------------------------------

PROGRAM=$(cat PROGRAM)
VERSION=$(cat VERSION)

cat $PROGRAM.rockspec.template | \
    sed "s/=VERSION=/$VERSION/g" > $PROGRAM-$VERSION.rockspec

API_KEY=$(cat API-KEY)
luarocks upload --api-key=$API_KEY --force $PROGRAM-$VERSION.rockspec

