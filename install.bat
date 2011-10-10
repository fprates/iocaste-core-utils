@echo off
cd ..\hsqldb\bin
set SQLTOOL="java -Dsqlfile.charset=UTF-8 -jar ..\lib\sqltool.jar"
set DB_SCRPT_PATH=..\..\scripts
set DB_SCRIPTS=%DB_SCRPT_PATH%\db-install-*.sql
%SQLTOOL% localhost-sa %DB_SCRPT_PATH%
