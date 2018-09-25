DROP TABLE IF EXISTS criminals;

CREATE TABLE criminals (
  id SERIAL8        PRIMARY KEY,
  name              VARCHAR(255),
  favourite_weapon  VARCHAR(255),
  danger_level      VARCHAR(255),
  bounty_value      INT8
);
