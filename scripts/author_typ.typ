create or replace type author_typ force as object
(
  name            varchar2(255),
  lastname        varchar2(50),
  initials        varchar2(10),
  firstname       varchar2(30),
  lastname_prefix varchar2(30),
  date_of_birth   varchar2(10),
  nationality     varchar2(3)

, constructor function author_typ
    return self as result
, constructor function author_typ
  ( lastname        varchar2, 
    initials        varchar2, 
    firstname       varchar2, 
    lastname_prefix varchar2, 
    date_of_birth   varchar2, 
    nationality     varchar2
  ) return self as result
)
/

create or replace type body author_typ 
is

  constructor function author_typ
    return self as result
  is
  begin
    return;
  end;
   
  constructor function author_typ
  ( lastname        varchar2
   ,initials        varchar2
   ,firstname       varchar2
   ,lastname_prefix varchar2
   ,date_of_birth   varchar2
   ,nationality     varchar2
  ) return self as result
  is
  begin
    self.lastname := lastname;
    self.initials := initials;
    self.firstname := firstname;
    self.lastname_prefix := lastname_prefix;
    self.date_of_birth := date_of_birth;
    self.nationality := nationality;
    self.name := lastname;
    if initials is not null or
       lastname_prefix is not null or 
       (firstname is not null and initials is null)
    then
      self.name := self.name || ',';
      if lastname_prefix is not null
      then
        self.name := self.name || ' ' || lastname_prefix;
      end if;
      if initials is not null
      then
        self.name := self.name || ' ' || initials;
      end if;
      if (firstname is not null and initials is null)
      then
        self.name := self.name || ' ' || firstname;
      end if;
    end if;
    return;
  end;
end;
/
