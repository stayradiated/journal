#!/usr/bin/env bash

build_dir=$(cd $(dirname "${BASH_SOURCE[0]}") >/dev/null 2>&1 && pwd)
notes_dir="${build_dir}/../"

cd "${notes_dir}"
find . -type f -iname '*.html' -not -path './.build/*' -delete
