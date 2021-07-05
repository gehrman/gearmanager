-- Create application tables

CREATE TABLE item (
  id serial PRIMARY KEY,
  quantity integer,
  item_name text,
  notes text,
  grams integer,
);

CREATE TABLE attribute (
  id serial PRIMARY KEY,
  description text
);

CREATE TABLE battery (
  name text PRIMARY KEY
);

CREATE TABLE threading (
  name text PRIMARY KEY
)

CREATE TABLE item_attribute (
  id serial PRIMARY KEY
  item_id integer REFERENCES item,
  attribute_id integer REFERENCES attribute,
  UNIQUE (item_id, attribute_id)
);

CREATE TABLE item_battery (
  item_id integer UNIQUE NOT NULL REFERENCES item,
  battery_name text REFERENCES battery,
);

CREATE TABLE item_threading (
  item_id integer UNIQUE NOT NULL REFERENCES item,
  threading_name text REFERENCES threading,
);
