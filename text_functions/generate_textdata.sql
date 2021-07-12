INSERT INTO funtext (content)
 SELECT GENERATE_SERIES(1, 100000) AS sn, --create column sn as a series(row) from 1 - 100000 
 (CASE WHEN (RANDOM() < 0.5)
  THEN 'https://psql.com/neon/' --select this url if random generated float is less than 0.5
  ELSE 'https://psql.com/matte/' ----select this url if random generated float is not less than 0.5
  END) || TRUNC(RANDOM()*1000000) AS url_address; --concatenate the selected url with the random number generated
