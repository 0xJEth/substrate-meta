#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
  echo "Usage:" >&2
  echo "archive_download.sh <network> <destination_path>" >&2
  echo "network: either 'polkadot' or 'kusama'" >&2
  echo "destination_path: the absolute path for the download (e.g. /data/chains/polkadot/db/full/)" >&2
  echo "CAUTION: the destination_path value will not be validated and contents of directory may be destroyed" >&2
  exit 2
fi

if ! command -v aria2c -h &> /dev/null
then
    echo "aria2c could not be found. Please install https://github.com/aria2/aria2 / \`apt install -y aria2\` / \`brew install aria2\`"
    exit 2
fi

NETWORK=$1
DEST_PATH=$2

# fix destination path trailing slash
[[ $DEST_PATH != */ ]] && DEST_PATH="$DEST_PATH"/

if [ "$NETWORK" == "polkadot" ]
then
  PRIMARY_MANIFEST_LOCATION="https://substrate.archive.aws.geometry.io/polkadot_primary_manifest.txt"
  PARACHAINS_MANIFEST_LOCATION="https://substrate.archive.aws.geometry.io/polkadot_parachains_manifest.txt"
elif [ "$NETWORK" == "kusama" ]
then
  PRIMARY_MANIFEST_LOCATION="https://substrate.archive.aws.geometry.io/kusama_primary_manifest.txt"
  PARACHAINS_MANIFEST_LOCATION="https://substrate.archive.aws.geometry.io/polkadot_parachains_manifest.txt"
else
  echo "Network must be either 'polkadot' or 'kusama'"
  exit 2
fi

for (( ; ; ))
do
  # download primary manifest
  MANIFEST=$(curl -s $PRIMARY_MANIFEST_LOCATION)

  # and collect valid through time
  END_VALID_TIME=$(echo "$MANIFEST" | awk 'NR==1{print $5}')

  # run download
  echo "Starting primary download..."
  echo "$MANIFEST" | aria2c -d $DEST_PATH -c --auto-file-renaming=false -j 25 -i -

  # download parachains manifest
  MANIFEST=$(curl -s $PARACHAINS_MANIFEST_LOCATION)

  # run download
  echo "Starting parachains download..."
  echo "$MANIFEST" | aria2c -d "$DEST_PATH"parachains/db/ -c --auto-file-renaming=false -j 25 -i -

  # grab current time
  NOW=$(date +"%s")

  # check if download finished within valid window
  if [[ $NOW -le $END_VALID_TIME ]]
  then
    echo "Download completed successfully!"
    break
  fi

  echo "Download completed after manifest expiry. Will resume..."

done

# prepare rocksdb manifest files

ls "$DEST_PATH"MANIFEST* | xargs -n 1 basename > "$DEST_PATH"CURRENT
ls "$DEST_PATH"parachains/db/MANIFEST* | xargs -n 1 basename > "$DEST_PATH"parachains/db/CURRENT