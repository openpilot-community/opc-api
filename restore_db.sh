#!/bin/bash
args=("$@")
# BACKUP_DATE=$(date +%Y-%m-%d"-"%H%M%S);
# pg_dump -F c -v -U joshua -h localhost opc-api_development -f ./db/db_backup_$BACKUP_DATE.psql
pg_restore --clean -c -C -F c -v -U pziqrsjqmsbmja ./db/${args[0]}.psql