#!/bin/sh -l

export AWS_ACCESS_KEY_ID=$1
export AWS_SECRET_ACCESS_KEY=$2
export AWS_DEFAULT_REGION=us-east-2
cd $GITHUB_WORKSPACE && eb deploy
