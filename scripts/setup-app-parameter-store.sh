#!/usr/bin/env bash

if [[ -z $1 && -z $2 ]] ; then
    echo 'Missing command line arguments'
    echo 'USAGE: setup-app-parameter-store.sh <Project> <Environment>'
    exit 1
fi

PROJECT=$1
ENV_NAME=$2

echo 'Please provide the following AWS parameter store values'
echo
read -p 'Use Azure (true, false): ' USE_AZURE
echo

echo "aws ssm put-parameter --name \"/${PROJECT}/${ENV_NAME}/USE_AZURE\" --description \"Use GraphAPI or not\" --type \"String\" --value \"${USE_AZURE}\" --overwrite"
#aws ssm put-parameter --name "/${PROJECT}/${ENV_NAME}/USE_AZURE" --description "Use GraphAPI or not" --type "String" --value "${USE_AZURE}" --overwrite

echo 'Saved parameters!'
echo
