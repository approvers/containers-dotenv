#!/usr/bin/env sh

cd ${GITHUB_WORKSPACE}

for DIRECTORY in */; do
    echo $DIRECTORY
    cd $DIRECTORY

    PREFIX=$(echo $DIRECTORY | sed 's/\///' | tr '[a-z]' '[A-Z]')
    printenv | grep "^${PREFIX}_"

    cd ..
done
