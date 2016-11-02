create or replace type book_typ force as object
(
  title      varchar2(100)
, subtitle   varchar2(100)
, year       number(4)
, isbn       varchar2(15)

, constructor function book_typ 
    return self as result
)
/

create or replace type body book_typ
is

  constructor function book_typ 
    return self as result
  is
  begin
    return;
  end;
end;
/
