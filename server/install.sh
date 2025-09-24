#!/bin/bash

# -e: Exit immediately if any command exits with a non-zero status.
# -u: Treat unset variables as an error and exit.
# -o pipefail: If any command in a pipeline fails, the entire pipeline fails
set -euo pipefail

# safer IFS for word splitting
IFS=$'\n\t'

# set safe PATH
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# limit default file permissions
umask 0027

if [[ "$EUID" -ne 0 ]]; then
  echo "Error: This script must be run as root." >&2
  exit 1
fi

APP="server"
USER="magfabricsapi"
GROUP="magfabricsapi"
ENVFILE="env"

# setup server environment
/usr/bin/install -d -m 750 -o "${USER}" -g "${GROUP}" "/home/${USER}/etc"
/usr/bin/install -d -m 750 -o "${USER}" -g "${GROUP}" "/home/${USER}/bin"
/usr/bin/install -d -m 750 -o "${USER}" -g "${GROUP}" "/home/${USER}/workingdir"
/usr/bin/install -d -m 750 -o "${USER}" -g "${GROUP}" "/home/${USER}/workingdir/${APP}"

# install configs
/usr/bin/install -m 640 -o "${USER}" -g "${GROUP}" "${ENVFILE}" "/home/${USER}/etc/env"
/usr/bin/install -m 644 -o root -g root "${USER}-${APP}.service" "/etc/systemd/system/${USER}-${APP}.service"
/usr/bin/install -m 755 -o root -g root "restart-${USER}-${APP}" "/usr/local/bin/restart-${USER}-${APP}"
/usr/bin/install -m 755 -o root -g root "deploy-${USER}-${APP}" "/usr/local/bin/deploy-${USER}-${APP}"
/usr/bin/install -m 600 -o root -g root "${USER}.sudoers" "/etc/sudoers.d/${USER}"

# setup systemd
/usr/bin/systemctl daemon-reload
/usr/bin/systemctl enable "${USER}-${APP}.service"

echo "${USER}-${APP} installed successfully."
exit 0