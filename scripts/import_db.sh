#!/bin/bash
# Import a SQL dump into the gas_strapi database
# Usage: ./import_db.sh <input_file.sql>

if [ -z "$1" ]; then
  echo "Usage: $0 <input_file.sql>"
  exit 1
fi

cat "$1" | docker exec -i gas-website-postgres-1 psql -U strapi -d strapi
