delete from task001 where tname='tools';
insert into task001 (tname, appli, entry) values ('tools', 'iocaste-core-utils', 'main');

delete from docs001 where docid='user';
delete from docs003 where ename = 'user_name';
delete from docs003 where ename = 'user_secret';
delete from docs002 where docid='user';

insert into docs001 (docid) values ('user');
insert into docs003 (ename, decim, lngth, etype) values ('user_name', 0, 12, 0);
insert into docs003 (ename, decim, lngth, etype) values ('user_secret', 0, 12, 0);
insert into docs002 (iname, docid, ename) values ('name', 'user', 'user_name');
insert into docs002 (iname, docid, ename) values ('secret', 'user', 'user_secret');

commit work;
