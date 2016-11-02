prompt Importing table books...
set feedback off
set define off
insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select ' 978-0439708180'
        ,'Harry Potter and the Sorcerer''s Stone'
        ,'Book 1'
        ,1999
        ,id
  from   authors
  where  lastname = 'Rowling';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select ' 978-0439064873'
        ,'Harry Potter And The Chamber Of Secrets'
        ,'Book 2'
        ,2000
        ,id
  from   authors
  where  lastname = 'Rowling';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '978-0439136365'
        ,'Harry Potter and the Prisoner of Azkaban'
        ,'Book 3'
        ,2001
        ,id
  from   authors
  where  lastname = 'Rowling';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '978-0439139601'
        ,'Harry Potter And The Goblet Of Fire'
        ,'Book 4'
        ,2002
        ,id
  from   authors
  where  lastname = 'Rowling';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '978-0439358071'
        ,'Harry Potter And The Order Of The Phoenix'
        ,'Book 5'
        ,2004
        ,id
  from   authors
  where  lastname = 'Rowling';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '978-0439785969'
        ,'Harry Potter and the Half-Blood Prince'
        ,'Book 6'
        ,2006
        ,id
  from   authors
  where  lastname = 'Rowling';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '978-0545139700'
        ,'Harry Potter and the Deathly Hallows'
        ,'Book 7'
        ,2009
        ,id
  from   authors
  where  lastname = 'Rowling';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '978-8900720402'
        ,'Harry Potter and the Cursed Child'
        ,'Parts One & Two (Book 8)'
        ,2016
        ,id
  from   authors
  where  lastname = 'Rowling';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '0922066035'
        ,' A Time to Kill '
        ,'A Novel of Retribution'
        ,1989
        ,id
  from   authors
  where  lastname = 'Grisham';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '978-0440245919'
        ,' A Time to Kill '
        ,null
        ,2009
        ,id
  from   authors
  where  lastname = 'Grisham';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '978-0399565205'
        ,'The Whistler'
        ,null
        ,2016
        ,id
  from   authors
  where  lastname = 'Grisham';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '978-0743493468'
        ,'Angels & Demons'
        ,null
        ,2006
        ,id
  from   authors
  where  lastname = 'Brown';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '978-0307474278'
        ,'The Da Vinci Code'
        ,null
        ,2009
        ,id
  from   authors
  where  lastname = 'Brown';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '978-0307950680'
        ,'The Lost Symbol'
        ,null
        ,2012
        ,id
  from   authors
  where  lastname = 'Brown';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '978-1400079155'
        ,'Inferno'
        ,null
        ,2014
        ,id
  from   authors
  where  lastname = 'Brown';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '978-0345339737'
        ,'The Return of the King'
        ,'The Lord of the Rings Part Three'
        ,1986
        ,id
  from   authors
  where  lastname = 'Tolkien';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select '978-0345339713'
        ,'The Two Towers'
        ,'The Lord of the Rings Part Two'
        ,1986
        ,id
  from   authors
  where  lastname = 'Tolkien';

insert into books
  (isbn
  ,title
  ,subtitle
  ,year
  ,author_id)
  select ' 978-0345339706'
        ,'The Fellowship of the Ring'
        ,'The Lord of the Rings Part One'
        ,1986
        ,id
  from   authors
  where  lastname = 'Tolkien';

prompt Done.
