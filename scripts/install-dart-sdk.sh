#!/usr/bin/env bash

set -euo pipefail

case $TARGETARCH in
amd64)
  target=x64
  ;;
arm64)
  target=arm64
  ;;
*)
  echo "$TARGETARCH is not supported"
  exit 1
  ;;
esac

curl --retry 5 --retry-delay 5 -sO "https://storage.googleapis.com/dart-archive/channels/stable/release/${DART_VERSION}/sdk/dartsdk-linux-${target}-release.zip"
unzip -q dartsdk-linux-${target}-release.zip
chmod +x dart-sdk/bin/dart*
mv -v dart-sdk/bin/* /usr/bin/
mv -v dart-sdk/lib/* /usr/lib/
mv -v dart-sdk/include/* /usr/include/
rm -rv dart-sdk/ dartsdk-linux-${target}-release.zip
