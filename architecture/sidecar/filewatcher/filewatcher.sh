#!/bin/bash

WATCHDIR="/data/"
inotifywait -m -q -e close_write --format %f ${WATCHDIR} | while IFS= read -r file
do
    aws sns publish --topic-arn "${SNS_TOPIC_ARN}" --message "A new file is uploaded - ${file}"
done
