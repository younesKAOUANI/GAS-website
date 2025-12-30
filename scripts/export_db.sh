#!/bin/bash
# Export the contents of the gas_strapi database to a SQL file
# Usage: ./export_db.sh <output_file.sql>

if [ -z "$1" ]; then
  echo "Usage: $0 <output_file.sql>"
  exit 1
fi

docker exec -i gas-website-postgres-1 pg_dump --clean --if-exists -U strapi -d strapi -F p --exclude-table=admin_users --exclude-table=admin_users_roles_lnk > "$1"
