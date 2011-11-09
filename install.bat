@echo off
set SQLTOOL=java -Dsqlfile.charset=UTF-8 -jar ..\hsqldb\lib\sqltool.jar
%SQLTOOL% localhost-sa scripts\db-install.sql
copy *.war ..\apache-tomcat\webapps\
echo "Instalação concluída com sucesso."
