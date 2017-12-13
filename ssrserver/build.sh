#!/bin/sh

MODULE=ssrserver
VERSION=0.2
TITLE="SSR Server"
DESCRIPTION=科学上网服务器
HOME_URL=Module_ssrserver.asp
CHANGELOG="增加客户端科学上网开关"

# Check and include base
DIR="$( cd "$( dirname "$BASH_SOURCE[0]" )" && pwd )"

# now include build_base.sh
. $DIR/../softcenter/build_base.sh

# change to module directory
cd $DIR

# build bin
sh $DIR/build/build ssrserver

# do something here

do_build_result

sh backup.sh $MODULE
