#!/bin/bash
SQLTOOL="java -Dsqlfile.charset=UTF-8 -jar ../lib/sqltool.jar"
DB_SCRIPTS=../../scripts/db-install.sql
cp iocaste-core-utils.war ../apache-tomcat/webapps/
$SQLTOOL localhost-sa $DB_SCRIPTS
