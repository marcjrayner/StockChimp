require_relative('../models/supplier.rb')
require('pry')

supplier1 = Supplier.new({
  'company_name' => 'Generic IT Distribution',
  'address' => 'Unit 4, Boring Industrial Park, Slough, SL21 4ED',
  'contact_name' => 'David Brent',
  'contact_job_title' => 'Sales Manager',
  'contact_phone_number' => '0330 123 5986'
  })

binding.pry
nil
