#!/bin/bash
# Import a SQL dump into the gas_strapi database
# Usage: ./import_db.sh <input_file.sql>

if [ -z "$1" ]; then
  echo "Usage: $0 <input_file.sql>"
  exit 1
fi

psql -U gas -d gas_strapi -h 127.0.0.1 -f "$1"
