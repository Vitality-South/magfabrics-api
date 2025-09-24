#!/bin/bash

# -e: Exit immediately if any command exits with a non-zero status.
# -u: Treat unset variables as an error and exit.
# -o pipefail: If any command in a pipeline fails, the entire pipeline fails
set -euo pipefail

# safer IFS for word splitting
IFS=$'\n\t'

# limit default file permissions
umask 0027

if [[ "$EUID" -eq 0 ]]; then
  echo "Error: Do not run this script as root." >&2
  exit 1
fi

APP="server"
USER="magfabricsapi"
GROUP="magfabricsapi"
ENVFILE="env"

# build the app
rm -f "${APP}"
go build -ldflags="-s -w" -o "${APP}"

# deploy and restart the service
sudo /usr/local/bin/deploy-${USER}-${APP}

echo "${APP} deployed successfully."
exit 0