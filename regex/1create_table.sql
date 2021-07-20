CREATE TABLE em (
    id SERIAL,
    primary key(id),
    email TEXT
);

INSERT INTO em (email)
  values ('csev@umich.edu'),
  ('coleel@umich.edu'),
  ('sally @uiuc.edu'),
  ('ted79@umuc.edu'),
  ('glen1@apple.com'),
  ('nbody@apple.com');