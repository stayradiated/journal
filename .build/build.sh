#!/usr/bin/env bash

set -euxo pipefail

build_dir=$(cd $(dirname "${BASH_SOURCE[0]}") >/dev/null 2>&1 && pwd)
template_path="${build_dir}/template.html"

plaintext_version='0.5'
plaintext_url="https://github.com/stayradiated/plaintext/releases/download/v${plaintext_version}/plaintext_${plaintext_version}_linux_386.tar.gz"

if test ! -f /tmp/plaintext; then
  curl --location --output /tmp/plaintext.tar.gz "${plaintext_url}"
  tar --ungzip --extract --file /tmp/plaintext.tar.gz --directory=/tmp plaintext
fi

/tmp/plaintext html --template "${template_path}"
