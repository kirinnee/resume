#!/usr/bin/env bash

set -eouf pipefail
xelatex resume.tex

mc alias set personal "$S3_HOST" "$S3_ID" "$3_SECRET"
mc cp ./resume.pdf personal/personal/resume.pdf
