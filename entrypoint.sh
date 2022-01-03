#!/bin/sh

set -eu

BUMP=$1
PATTERN=$2
PREFIX=$3

if svu --pattern="${PATTERN}" --prefix="${PREFIX}" current 2>/dev/null 1>/dev/null
then
    version="$(svu --pattern="${PATTERN}" --prefix="${PREFIX}" "${BUMP}")"
    version_without_prefix="$(svu --pattern="${PATTERN}" --prefix="${PREFIX}" --strip-prefix "${BUMP}")"
else
    echo "::error Could not find a current version!"
    exit 1
fi
echo "::group::Next version"
echo "${version}"
echo "::endgroup::"

echo "::set-output name=version::${version}"
echo "::set-output name=version-without-prefix::${version_without_prefix}"
