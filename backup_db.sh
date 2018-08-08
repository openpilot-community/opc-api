#!/bin/bash
BACKUP_DATE=$(date +%Y-%m-%d"-"%H%M%S);
pg_dump -Fc --no-acl --no-owner -h localhost -U joshua opc-api_development > ./db/db_backup_$BACKUP_DATE.psql