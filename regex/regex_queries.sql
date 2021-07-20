SELECT email FROM em WHERE email ~ 'umich'; --this is like the LIKE comparison, returns 
                                            --any string that comtains the 'umich' substring 


SELECT email FROM em WHERE email ~ '^c'; --this returns any email that begins with the letter 'c'


SELECT email FROM em WHERE email ~ 'edu$'; --this returns any email that ends with the charaters 'edu'


SELECT email FROM em WHERE email ~ '^[gnt]'; --this returns any email that begins with any of
                                                --the specified *ters in the bracket


SELECT email FROM em WHERE email ~ '[0-9]'; --this returns any email that contains a digit


SELECT email FROM em WHERE email ~ '[0-9][0-9]'; --this returns any email that has a sequence of at least two digits


SELECT substring(email FROM '[0-9]+') FROM em WHERE email ~ '[0-9]'; --this extract a substring of the that matches 
                                                                    --the regex pattern from the selected email
                                                                    
SELECT substring(email FROM '.+@(.*)$') FROM em; --this extracts the domain names from the emails, the brackets 
                                                    --specify where the extraction begins and stops.


SELECT DISTINCT substring(email FROM '.+@(.*)$') FROM em; --this extracts the distinct domain names from the emails.
                                                            --NOTE '.*' not '.+'. * means zero or more characters.


SELECT substring(email FROM '.+@(.*)$'),
  COUNT(substring(email FROM '.+@(.*)$'))
  FROM em GROUP BY (substring(email FROM '.+@(.*)$')); --this extracts the domain names from the emails and returns in distinct 
                                            --groups with their member count

SELECT * FROM em WHERE substring(email FROM '.+@(.*)$') = 'umich.edu'; --returns emails that have 'umich.edu' as it domiain name.
