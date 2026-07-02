#!/bin/bash

# Backup n8n workflows and PostgreSQL database

BACKUP_DIR="./backups/$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

# Backup PostgreSQL database
docker exec postgres pg_dump -U $POSTGRES_USER $POSTGRES_DB > "$BACKUP_DIR/postgres_backup.sql"

# Backup n8n data
cp -r ./data/n8n "$BACKUP_DIR/"

echo "Backup completed: $BACKUP_DIR"