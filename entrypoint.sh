#!/bin/sh -l

export AWS_ACCESS_KEY_ID=$1
export AWS_SECRET_ACCESS_KEY=$2
export AWS_DEFAULT_REGION=$3

# Set up eb profile
AWS_CONFIG_FILE=${HOME}/.aws/config
AWS_PROFILE=eb-cli
touch $AWS_CONFIG_FILE
chmod 600 $AWS_CONFIG_FILE

cat << EOF > $AWS_CONFIG_FILE
[profile ${AWS_PROFILE}]
output = ${AWS_DEFAULT_OUTPUT}
region = ${AWS_DEFAULT_REGION}
aws_access_key_id = ${AWS_ACCESS_KEY_ID}
aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}
EOF

cd $GITHUB_WORKSPACE && \
eb deploy
