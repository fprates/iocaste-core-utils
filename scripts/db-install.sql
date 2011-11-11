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
insert into docs003 (ename, decim, lngth, etype, upcas) values ('user_name', 0, 12, 0, 1);
insert into docs003 (ename, decim, lngth, etype, upcas) values ('user_secret', 0, 12, 0, 0);
insert into docs003 (ename, decim, lngth, etype, upcas) values ('user_firstname', 0, 64, 0, 1);
insert into docs003 (ename, decim, lngth, etype, upcas) values ('user_surname', 0, 64, 0, 1);
insert into docs002 (iname, docid, fname, ename, attrb, index) values ('name', 'user', 'UNAME', 'user_name', 'username', 0);
insert into docs002 (iname, docid, fname, ename, attrb, index) values ('secret', 'user', 'SECRT', 'user_secret', 'secret', 1);
insert into docs002 (iname, docid, fname, ename, attrb, index) values ('firstname', 'user', 'FNAME', 'user_firstname', 'firstname', 2);
insert into docs002 (iname, docid, fname, ename, attrb, index) values ('surname', 'user', 'SNAME', 'user_surname', 'surname', 3);
insert into docs004 (docid, iname) values ('user', 'name');

commit work;
