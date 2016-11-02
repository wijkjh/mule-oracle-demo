prompt Importing table authors...
set feedback off
set define off
insert into authors (LASTNAME, INITIALS, FIRSTNAME, LASTNAME_PREFIX, DATE_OF_BIRTH, NATIONALITY)
values ('Rowling', 'JK', null, null, '1965', 'UK');

insert into authors (LASTNAME, INITIALS, FIRSTNAME, LASTNAME_PREFIX, DATE_OF_BIRTH, NATIONALITY)
values ('Grisham', null, 'John', null, '1965-2-8', 'US');

insert into authors (LASTNAME, INITIALS, FIRSTNAME, LASTNAME_PREFIX, DATE_OF_BIRTH, NATIONALITY)
values ('Brown', null, 'Dan', null, null, 'US');

insert into authors (LASTNAME, INITIALS, FIRSTNAME, LASTNAME_PREFIX, DATE_OF_BIRTH, NATIONALITY)
values ('Tolkien', 'JRR', null, null, '1892', 'UK');

prompt Done.
