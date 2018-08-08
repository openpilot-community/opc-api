#!/bin/bash
BACKUP_DATE=$(date +%Y-%m-%d"-"%H%M%S);
pg_dump -Fc -U joshua -h localhost opc-api_development -f ./db/db_backup_$BACKUP_DATE.psql