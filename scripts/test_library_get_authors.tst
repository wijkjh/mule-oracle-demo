PL/SQL Developer Test script 3.0
8
declare
  result author_tab;
begin
  result := library.get_authors(p_filter_name => :p_filter_name);
  select sys_xmlgen(result, xmlformat('RESULT')).getstringval()
  into   :result
  from   dual;
end;
2
p_filter_name
0
5
result
2
﻿<?xml version="1.0"?>
<RESULT/>
10
0
