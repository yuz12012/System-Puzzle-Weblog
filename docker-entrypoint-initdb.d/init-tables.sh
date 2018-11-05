#!/bin/bash
set -e
#echo "It is running!"
psql -v ON_ERROR_STOP=1 --username dbuser --dbname webserver <<-EOSQL
        CREATE TABLE  weblogs (
               day    date,
               status varchar(3),
               type   varchar(10)
               );
EOSQL
