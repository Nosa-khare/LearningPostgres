
explain analyze SELECT content FROM funtext WHERE content LIKE '%150000%';

--for queries that call for seq scans, adding limit to results could help reduce execution time
--depending on what row number results are located
explain analyze SELECT content FROM funtext WHERE content LIKE '%150000%' LIMIT 1;
--limit would stop further scans the moment results are gathered
--hence it is essential to understand your data


explain analyze SELECT content FROM funtext 
  WHERE content IN ('https://psql.com/matte/150000', 'http://psql.com/matte/150000');
--this would call for an index scan. this would perform an exact match look up as many 
--times as the number of string in the list (in this case twice)


--With subqueries

explain analyze SELECT content FROM funtext 
  WHERE content IN (SELECT content FROM funtext WHERE content LIKE '%150000%');
--here inner query calls for a sequential scan being a case insensitive expression
--while outer query would execute an index scan being exact match look up expressions (IN).


explain analyze SELECT content FROM funtext 
  WHERE content IN (SELECT content FROM funtext WHERE content LIKE '%150000%');
--this would be an index scan all through.
--the inner query being a prefix look up and outer query an exact match look ups.
