#!/bin/bash
SQLTOOL="java -Dsqlfile.charset=UTF-8 -jar ../lib/sqltool.jar"
FROM=$(pwd)
DB_SCRIPTS=$FROM/scripts/db-install.sql
cp *.war ../apache-tomcat/webapps/
cd ../hsqldb/bin
$SQLTOOL localhost-sa $DB_SCRIPTS
cd $FROM
echo "Instalação concluída com sucesso."
