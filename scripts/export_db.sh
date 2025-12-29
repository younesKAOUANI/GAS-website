#!/bin/bash
# Export the contents of the gas_strapi database to a SQL file
# Usage: ./export_db.sh <output_file.sql>

if [ -z "$1" ]; then
  echo "Usage: $0 <output_file.sql>"
  exit 1
fi

pg_dump -U gas -h 127.0.0.1 -d gas_strapi -F p -f "$1"
