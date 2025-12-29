#!/bin/bash
# Seed the gas_strapi database with initial data using a SQL file
# Usage: ./seed_db.sh <path_to_seed_file.sql>

if [ -z "$1" ]; then
  echo "Usage: $0 <path_to_seed_file.sql>"
  exit 1
fi

psql -U gas -d gas_strapi -h 127.0.0.1 -f "$1"
