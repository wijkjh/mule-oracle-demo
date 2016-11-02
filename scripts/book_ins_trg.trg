create or replace trigger book_ins_trg
  for insert on demo.books
  compound trigger

  before statement is
  begin
    null;
  end before statement;

  before each row is
  begin
    :new.id := book_seq.nextval;
  end before each row;

  after each row is
  begin
    null;
  end after each row;

  after statement is
  begin
    null;
  end after statement;
end;
/
