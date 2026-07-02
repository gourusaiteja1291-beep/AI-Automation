#!/bin/bash

# Restore n8n workflows and PostgreSQL database from backup

if [ -z "$1" ]; then
  echo "Usage: ./restore.sh <backup_directory>"
  exit 1
fi

BACKUP_DIR="$1"

# Restore PostgreSQL database
docker exec -i postgres psql -U $POSTGRES_USER $POSTGRES_DB < "$BACKUP_DIR/postgres_backup.sql"

# Restore n8n data
cp -r "$BACKUP_DIR/n8n" ./data/

echo "Restore completed from: $BACKUP_DIR"