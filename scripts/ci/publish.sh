#!/usr/bin/env bash

s3host="$S3_HOST"
s3id="$S3_ID"
s3secret="$S3_SECRET"
[ "$s3host" = '' ] && echo "S3_HOST not found" && exit 1
[ "$s3id" = '' ] && echo "S3_ID not found" && exit 1
[ "$s3secret" = '' ] && echo "S3_SECRET not found" && exit 1

set -eouf pipefail
xelatex resume.tex >"/dev/null"

mc alias set personal "$s3host" "$s3id" "$s3secret"
mc cp ./resume.pdf personal/personal/resume.pdf
