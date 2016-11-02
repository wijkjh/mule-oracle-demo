create or replace package body library
is

  function get_authors(p_filter_name in varchar2)
     return sys_refcursor
  is
    l_cursor sys_refcursor;
  begin
    if trim(p_filter_name) is not null
    then
      open l_cursor for
        select author_typ(lastname
                   ,initials
                   ,firstname
                   ,lastname_prefix
                   ,date_of_birth
                   ,nationality)
        from   authors
        where  lastname like p_filter_name;
    else
      open l_cursor for
        select author_typ(lastname
                   ,initials
                   ,firstname
                   ,lastname_prefix
                   ,date_of_birth
                   ,nationality)
        from   authors;
    end if;
    --
    return l_cursor;
  end get_authors;
--
  function get_author_list(p_filter_name in varchar2)
    return demo.author_tab
  is
    l_authors demo.author_tab;
  begin
    if trim(p_filter_name) is not null
    then
      select author_typ(lastname
                       ,initials
                       ,firstname
                       ,lastname_prefix
                       ,date_of_birth
                       ,nationality)
      bulk   collect
      into   l_authors
      from   authors
      where  lastname like p_filter_name;
    else
      select author_typ(lastname
                       ,initials
                       ,firstname
                       ,lastname_prefix
                       ,date_of_birth
                       ,nationality)
      bulk   collect
      into   l_authors
      from   authors;
    end if;
    --
    return l_authors;
  end get_author_list;
  --
  function get_author_list_xml(p_filter_name in varchar2)
     return XMLType
  is
    l_authors demo.author_tab;
    l_xml      XMLType;
  begin
    l_authors := get_author_list(p_filter_name);
    --
    if l_authors is not null
    then
      select sys_xmlgen(l_authors, xmlformat('AUTHORS'))
      into   l_xml
      from   dual;
    else
      l_xml := NULL;
    end if;
    return l_xml;
  end;
     
end library;
/
