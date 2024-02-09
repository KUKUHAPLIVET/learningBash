#!/usr/bin/env bash
readonly CONF_FILE=".conf"

if [[ -f ${CONF_FILE} ]]; then
  source "${CONF_FILE}"
else
  name="Bob"
fi

echo "${name}"

exit 0 
 