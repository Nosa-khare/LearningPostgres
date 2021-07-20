CREATE TABLE mailbox (
    id SERIAL,
    primary key(id),
    email TEXT
);

INSERT INTO em (email)
  values ('csev@umich.edu'),
  ('coleel@umich.edu'),
  ('sally@uiuc.edu'),
  ('ted79@umuc.edu'),
  ('glen1@apple.com'),
  ('nbody@apple.com'),
  ('amy213@gmail.com');


CREATE TABLE twitter (
  id SERIAL,
  PRIMARY KEY(id)
  tweet TEXT
);

INSERT INTO twitter (tweet)
  VALUES ('This is #SQL and its #FUN'),
  ('Everyone should learn #SQL, the time is #NOW'),
  ("You'd do well to also learn #PYTHON" )
  