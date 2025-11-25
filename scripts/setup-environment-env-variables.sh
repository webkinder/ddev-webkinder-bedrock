#!/usr/bin/env bash
## #ddev-generated

# set -x 
set -eu -o pipefail

if [ "$#" -ne 2 ]; then
    echo "Usage: setup-environment-env-variables.sh <environment> <strategy>"
    exit 1
fi

case "$2" in
  github)
    if ! command -v gh &> /dev/null
    then
        echo "gh command could not be found, please install."
        exit 1
    fi
    eval $(gh variable list --env ${1} --json name,value --jq ".[] | \"export ENVIRONMENT_\" + .name + \"=\\\"\" + .value + \"\\\"\"")
    ;;
  json)
    if ! command -v jq &> /dev/null
    then
        echo "jq command could not be found, please install."
        exit 1
    fi
    if [ ! -f "${DDEV_APPROOT}/environments.json" ]; then
        echo "environments.json file not found."
        exit 1
    fi

    eval $(jq -r ".environments.${1}.variables[] | \"export ENVIRONMENT_\" + .name + \"=\\\"\" + .value + \"\\\"\"" "${DDEV_APPROOT}/environments.json")
    ;;
esac

