#! /bin/bash
mysqldump -u"$DB_USER" -p"$DB_PASSWORD" ShopDB --no-create-db --result-file=Shopdb_full_backup.sql
mysql -u"$DB_USER" -p"$DB_PASSWORD" ShopDBReserve < Shopdb_full_backup.sql

mysqldump -u"$DB_USER" -p"$DB_PASSWORD" ShopDB --no-create-info --result-file=Shopdb_data_backup.sql
mysql -u"$DB_USER" -p"$DB_PASSWORD" ShopDBDevelopment < Shopdb_data_backup.sql
