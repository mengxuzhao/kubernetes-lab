#!/bin/bash

NOTIFY_DEVICE=
PROFILE=

export FILEWATCHER_IMAGE_TAG=
export APACHE_IMAGE_TAG=

export AWS_ACCESS_KEY_ID=$(aws --profile ${PROFILE} configure get aws_access_key_id)
export AWS_SECRET_ACCESS_KEY=$(aws --profile ${PROFILE} configure get aws_secret_access_key)
export SNS_TOPIC_ARN=
