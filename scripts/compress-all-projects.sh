#!/usr/bin/env bash

set -e

echo -e "compress-all-projects.sh ..." && sleep 3s

extracted_path="./extracted"
archive_path="./archive"

rm -r "${archive_path}" && \
    mkdir -p "${extracted_path}" && \
    mkdir -p "${archive_path}"

for filepath in "${extracted_path}"/*;
do
    new_fpath="${archive_path}/$(basename ${filepath}).tar.gz"
    echo "Creating: '${new_fpath}' ..."
    tar -C "${extracted_path}" -v --create --file "${new_fpath}" "$(basename ${filepath})"
done
