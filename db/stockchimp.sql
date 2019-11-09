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
