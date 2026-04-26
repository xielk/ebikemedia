#!/usr/bin/env bash
set -euo pipefail

HUGO_VERSION="${HUGO_VERSION:-0.159.1}"
HUGO_TGZ="hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz"
HUGO_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_TGZ}"

echo "Downloading Hugo extended ${HUGO_VERSION} ..."
curl -fsSL "$HUGO_URL" -o /tmp/hugo_extended.tgz

tar -xzf /tmp/hugo_extended.tgz -C /tmp hugo
chmod +x /tmp/hugo

/tmp/hugo version
/tmp/hugo --gc --minify --enableGitInfo
