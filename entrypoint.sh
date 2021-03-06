#!/bin/sh -l

# Set up eb profile
AWS_CONFIG_FILE=${HOME}/.aws/config
AWS_PROFILE=eb-cli
[ ! -d $HOME/.aws ] && mkdir -p ${HOME}/.aws/
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
eb deploy -v
