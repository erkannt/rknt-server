#!/bin/bash
source ../.env

mc alias set backup https://backup.rknt.de ${BACKUP_ACCESS_KEY} ${BACKUP_SECRET_KEY}

mc admin policy add backup readonlyWithList readonlyWithList.json

mc admin user add backup ${BACKUP_READ_ACCESS_KEY} ${BACKUP_READ_SECRET_KEY}
mc admin policy set backup readonlyWithList user=${BACKUP_READ_ACCESS_KEY}

mc admin user add backup ${BACKUP_ADMIN_ACCESS_KEY} ${BACKUP_ADMIN_SECRET_KEY}
mc admin policy set backup consoleAdmin user=${BACKUP_ADMIN_ACCESS_KEY}
