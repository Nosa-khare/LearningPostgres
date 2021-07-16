
---b_tree indexes are great for sorting, prefix look up and exact match look up


explain analyze SELECT content FROM funtext WHERE content LIKE 'r%';
--this is a prefix look up to list all contents starting with the letter 'r'
--without an index on the column this query calls for a full sequential scan on the table

CREATE INDEX funtext_b ON funtext(content);
--creating a b_tree index on the content column


explain analyze SELECT content FROM funtext WHERE content LIKE 'r%';
--after creating an index there appears to be no change in plan
--this is because the index will not perfom of pattern matching on 
--servers running a locale other than "C" (show LC_COLLATE)


--to fix this a special index should be created
--this is done by specifying the "text_pattern_ops" operator class after the column name.
CREATE INDEX funtext_b2 ON funtext(content text_pattern_ops);
--to use an index for queries involving ordinary "<, <=, >, or >=" (non pattern matching) comparisons  
--an additional index should be create with the default operator class
--queries involving inequality comparisons cannot use the xxx_pattern_ops operator classes. 
--It is possible to create multiple indexes on the same column with different operator classes


explain analyze SELECT content FROM funtext WHERE content LIKE '%r%';
--this is neither a prefix nor exact match look up. 
--it would therefore result in a full table sequential scan.


explain analyze SELECT content FROM funtext WHERE content ILIKE 'r%';
--this tells postgres to ignore case.
--b-tree does not support case insensitive comparison

--in this case an index that would take the lowercase of the explression into account
CREATE INDEX funtext_b2_lower ON funtext(lower(content) text_pattern_ops);
--we can now run a query for lowercase pattern (instead of ILIKE) and have postgre
--perform an index scan
explain analyze SELECT content FROM funtext WHERE lower(content) LIKE 'r%';
