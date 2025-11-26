#!/usr/bin/env sh
# Vytvorí novú KNIFE inštanciu – test

set -e

python3 core/scripts/tools/new_item_instance.py \
  --type knife \
  --config config/knifes/knifes_config.yml \
  --id K000102 \
  --name "K000102-CKO-Role" \
  --title "K000102-CKO-Role " \
  --exists error