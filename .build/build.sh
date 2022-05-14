#!/usr/bin/env bash

build_dir=$(cd $(dirname "${BASH_SOURCE[0]}") >/dev/null 2>&1 && pwd)
template_path="${build_dir}/template.html"

plaintext_version='0.5.3'
plaintext_url="https://github.com/stayradiated/plaintext/releases/download/v${plaintext_version}/plaintext_${plaintext_version}_linux_386.tar.gz"

if test ! -f /tmp/plaintext; then
  curl --location --output /tmp/plaintext.tgz "${plaintext_url}"
  tar --extract --file /tmp/plaintext.tgz --directory=/tmp plaintext
fi

/tmp/plaintext html --template "${template_path}"
