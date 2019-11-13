DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS suppliers;

CREATE TABLE suppliers(
  id SERIAL8 PRIMARY KEY,
  company_name VARCHAR(255),
  address VARCHAR(255),
  contact_name VARCHAR(255),
  contact_job_title VARCHAR(255),
  contact_phone_number VARCHAR(255)
);

CREATE TABLE items
(
  id SERIAL8 PRIMARY KEY,
  part_number VARCHAR(255),
  manufacturer VARCHAR(255),
  description VARCHAR(255),
  category VARCHAR(255),
  condition VARCHAR(255),
  status VARCHAR(255),
  quantity INT4,
  supplier_id INT8 DEFAULT 1 REFERENCES suppliers(id) ON DELETE SET DEFAULT,
  unit_buy_price MONEY,
  target_sell_price MONEY,
  min_sell_price MONEY
);
