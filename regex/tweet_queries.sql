SELECT tweet FROM twitter;


SELECT id, tweet FROM twitter WHERE tweet ~ '#SQSL'; --this returns all tweets that has the #SQL present


SELECT regexp_matches(tweet, '#[A-Za-z0-9_]+', 'g') FROM twitter; --this pulls out all #tags present in the tweets
                                                                    --NOTE with the '+' at the end, it ought to print out
                                                                    --the rest part of the srting, but because the whitespace is not
                                                                    --included in the set of allowed characters, it stops the match there
SELECT regexp_matches(tweet, '#([A-Za-z0-9_]+)', 'g') FROM twitter; --this pulls out all #tags present in the tweets without the actual pound sign



SELECT DISTINCT regexp_matches(tweet, '#[A-Za-z0-9_]+', 'g') FROM twitter; --returns all distinct #tags present in the tweets


SELECT id, regexp_matches(tweet, '#[A-Za-z0-9_]+', 'g') FROM twitter; --this connects the #tags to the tweets they came from via the id primary key column
