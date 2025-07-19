#!/usr/bin/env bash

set -e

echo -e "extract-all-projects.sh ..." && sleep 3s

extracted_path="./extracted"
archive_path="./archive"

rm -rf "${extracted_path}" && \
    mkdir -p "${extracted_path}"

for filepath in "${archive_path}"/*.tar.gz;
do
    echo "Extracting: '${filepath}' ..."
    tar xvf "${filepath}" --directory "${extracted_path}"
done
