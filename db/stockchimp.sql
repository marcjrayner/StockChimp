DROP TABLE items;
DROP TABLE suppliers;

CREATE TABLE suppliers(
  id SERIAL8 PRIMARY KEY,
  company_name VARCHAR(255),
  address VARCHAR(255),
  contact_name VARCHAR(255),
  contact_job_title VARCHAR(255)
  contact_phone_number VARCHAR(255),
)

CREATE TABLE items
(
  id SERIAL8 PRIMARY KEY,
  part_number VARCHAR(255),
  manufacturer VARCHAR(255),
  category VARCHAR(255),
  condition VARCHAR(255),
  status VARCHAR(255),
  quantity INT4,
  supplier_id INT8 REFERENCES suppliers(id)
  unit_buy_price MONEY,
  target_unit_sell_price MONEY,
  minimum_unit_sell_price MONEY,
);
