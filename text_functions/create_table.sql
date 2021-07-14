
CREATE TABLE funtext(
	content TEXT
);
CREATE INDEX funtext_b ON funtext(content); --create a b_tree index on content column in the funtext table
 --default index is a b_tree
