DROP TABLE TSVETA IF EXISTS;
DROP SEQUENCE global_seq IF EXISTS;

CREATE TABLE TSVETA
(
  id               INTEGER                 NOT NULL,
  color_number     VARCHAR(255)            NOT NULL,
  name             VARCHAR(255)            NOT NULL
);