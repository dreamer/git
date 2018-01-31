#!/bin/env bash

FORMAT=$1
REPO=$2

rm -rfv $REPO
mkdir $REPO
./git -C $REPO init
./git -C $REPO config core.repositoryformatversion 1
./git -C $REPO config extensions.objectformat $FORMAT
touch $REPO/file
./git -C $REPO add file
./git -C $REPO status
