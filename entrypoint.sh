#!/bin/sh

set -eu

BUMP=$1
PATTERN=$2
PREFIX=$3
INITIAL=${4:-}

if svu --pattern="${PATTERN}" --prefix="${PREFIX}" current 2>/dev/null 1>/dev/null
then
    version="$(svu --pattern="${PATTERN}" --prefix="${PREFIX}" "${BUMP}")"
else
    if [ -n "${INITIAL}" ]
    then
        echo "::warning Could not find a current version, initialising version to ${INITIAL}"
        version="${PREFIX}${INITIAL}"
    else
        echo "::error Could not find a current version!"
        exit 1
    fi
fi
echo "::group::Next version"
echo "${version}"
echo "::endgroup::"

echo "::set-output name=version::${version}"
