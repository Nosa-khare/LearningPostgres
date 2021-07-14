INSERT INTO funtext (content)
 SELECT (CASE WHEN (RANDOM() < 0.5)
  THEN 'http://psql.com/neon/' --select this url if random generated float is less than 0.5
  ELSE 'https://psql.com/matte/' ----select this url if random generated float is not less than 0.5
  END) || GENERATE_SERIES(100001, 200000); --concatenate the selected url with the random number generated
 