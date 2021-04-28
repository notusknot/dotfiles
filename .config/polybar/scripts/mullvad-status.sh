
#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

MULLVAD_STATUS=$(mullvad status)

if echo $MULLVAD_STATUS | grep -q 'Connected'; then
  echo "歷 "
 elif echo $MULLVAD_STATUS | grep -q 'Connecting'; then
   echo "轢 "
 else
  echo "轢 "
fi
