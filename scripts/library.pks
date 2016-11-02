create or replace package library
is
-- Retrieve list of authors and returning a refcursor
  function get_authors(p_filter_name in varchar2)
     return sys_refcursor;

-- Retrieve list of authors and returning a collection type
  function get_author_list(p_filter_name in varchar2)
     return demo.author_tab;

end library;
/
