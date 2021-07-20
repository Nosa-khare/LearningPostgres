SELECT email FROM em WHERE email ~ 'umich';


SELECT email FROM em WHERE email ~ '^c';


SELECT email FROM em WHERE email ~ 'edu$';


SELECT email FROM em WHERE email ~ '^[gnt]';


SELECT email FROM em WHERE email ~ '[0-9]';


SELECT email FROM em WHERE email ~ '[0-9][0-9]';


SELECT substring(email, FROM '[0-9]+') WHERE email ~ '[0-9]';


SELECT substring(email FROM '.+@(.*)$') FROM em;


SELECT DISTINCT substring(email FROM '.+@(.*)$') FROM em;


SELECT substring(email, FROM '[0-9]+'), 
  COUNT(email FROM '.+@(.*)$')
  FROM em GROUP BY (email FROM '.+@(.*)$');