
SELECT content FROM funtext WHERE content LIKE '%150000%'; --returns all rows that contain the specified characters

SELECT UPPER(content) FROM funtext WHERE content LIKE '%150000%'; --returns row in uppercase

SELECT LOWER(content) FROM funtext WHERE content LIKE '%150000%'; --returns row in lowercase

SELECT LEFT(content, 4) FROM funtext WHERE content LIKE '%150000%'; --returns the first 4 characters from content

SELECT RIGHt(content, 4) FROM funtext WHERE content LIKE '%150000%'; --returns the last 4 characters from content

SELECT strpos(content, 'ttps://') FROM  funtext WHERE content LIKE '%150000%'; --returns the string position where the specified character set begins

SELECT split_part(content, '/', 4) FROM  funtext WHERE content LIKE '%150000%'; --splits the content into groups using the / as delimiter and returns the 4th part

SELECT substr(content, 2, 4) FROM  funtext WHERE content LIKE '%150000%'; --returns the first four character of the content starting from position 2

SELECT translate(content, 'th.p/', 'TH!P_') FROM  funtext WHERE content LIKE '%150000%'; --swaps character of first string with corresponding(matching position) 
                                                                                        --character in second string into content.
                                                                                        --both strings must have same number of character.

