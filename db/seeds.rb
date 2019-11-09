require_relative('../models/supplier.rb')
require_relative('../models/item.rb')
require('pry-byebug')

Supplier.delete_all

supplier1 = Supplier.new({
  'company_name' => 'Generic IT Distribution',
  'address' => 'Unit 4, Boring Industrial Park, Slough, SL21 4ED',
  'contact_name' => 'David Brent',
  'contact_job_title' => 'Sales Manager',
  'contact_phone_number' => '0330 123 5986'
  })

supplier1.save()

item1 = Item.new({
    'part_number' => 'i7-10510U',
    'manufacturer' => 'Intel',
    'description' => 'Quad Core Processor',
    'category' => 'CPU',
    'condition' => 'New',
    'status' => 'In Stock',
    'quantity' => 5,
    'supplier_id' => supplier1.id,
    'unit_buy_price' => 370.00,
    'target_sell_price' => 450.00,
    'min_sell_price' => 400.00
  })

item1.save()


binding.pry()
nil
