#!/usr/bin/env bash

plaintext_version='0.2'
plaintext_url="https://github.com/stayradiated/plaintext/releases/download/v${plaintext_version}/plaintext_${plaintext_version}_linux_386.tar.gz"

if test ! -f /tmp/plaintext; then
  curl --location --output /tmp/plaintext.tgz "${plaintext_url}"
  tar --extract --file /tmp/plaintext.tgz --directory=/tmp plaintext
fi

/tmp/plaintext

