#!/bin/bash
set -e

BACKUP_DIR="$HOME/enterprise-cloud/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/wordpress_$TIMESTAMP.sql"

mkdir -p "BACKUP_DIR"
docker exec enterprise-db sh -c \
  'exec mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" wordpress' \
  > "$BACKUP_FILE"

if [ -s "$BACKUP_FILE" ]; then
    echo "Backup succesful: $BACK_FILE"
else
    echo "ERROR: Backup file is empty."
    exit 1
fi

find "$BACKUP_DIR" -name "wordpress_*.sql" -type f -mtime +7 -delete
