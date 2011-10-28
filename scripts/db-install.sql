delete from task001 where tname='tools';
insert into task001 (tname, appli, entry) values ('tools', 'iocaste-core-utils', 'main');

delete from docs004 where docid='user';
delete from docs003 where ename='user_name';
delete from docs003 where ename='user_secret';
delete from docs003 where ename='user_firstname';
delete from docs003 where ename='user_surname';
delete from docs002 where docid='user';
delete from docs001 where docid='user';

insert into docs001 (docid, tname, class) values ('user', 'users001', 'org.iocaste.protocol.user.User');
insert into docs003 (ename, decim, lngth, etype) values ('user_name', 0, 12, 0);
insert into docs003 (ename, decim, lngth, etype) values ('user_secret', 0, 12, 0);
insert into docs003 (ename, decim, lngth, etype) values ('user_firstname', 0, 64, 0);
insert into docs003 (ename, decim, lngth, etype) values ('user_surname', 0, 64, 0);
insert into docs002 (iname, docid, fname, ename, attrb) values ('name', 'user', 'UNAME', 'user_name', 'username');
insert into docs002 (iname, docid, fname, ename, attrb) values ('secret', 'user', 'SECRT', 'user_secret', 'secret');
insert into docs002 (iname, docid, fname, ename, attrb) values ('firstname', 'user', 'FNAME', 'user_firstname', 'firstname');
insert into docs002 (iname, docid, fname, ename, attrb) values ('surname', 'user', 'SNAME', 'user_surname', 'surname');
insert into docs004 (docid, iname) values ('user', 'name');

commit work;
