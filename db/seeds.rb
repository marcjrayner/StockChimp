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
supplier2 = Supplier.new({
  'company_name' => 'Arrow',
  'address' => 'Hirwaun Industrial Estate, Aberdare CF44 9UP',
  'contact_name' => 'Melissa Hayes',
  'contact_job_title' => 'Asset Manager',
  'contact_phone_number' => '0320 142 3956'
  })
supplier3 = Supplier.new({
  'company_name' => 'Green Refurbishers',
  'address' => '56 Elm Street, Brighton, BE21 7YD',
  'contact_name' => 'Robert Marley',
  'contact_job_title' => 'CEO',
  'contact_phone_number' => '07362 987 342'
  })
supplier4 = Supplier.new({
  'company_name' => 'DATA IT',
  'address' => 'Unit 5, Boring Industrial Park, Slough, SL21 4ED',
  'contact_name' => 'Jean Simmons',
  'contact_job_title' => 'Salesperson',
  'contact_phone_number' => '0321 312 356'
  })
supplier5 = Supplier.new({
  'company_name' => 'SuperSellers',
  'address' => '1 Bermondsey Street, London, SE17AD',
  'contact_name' => 'Bill Murray',
  'contact_job_title' => 'Sales Manager',
  'contact_phone_number' => '020 4123 2323'
  })
supplier6 = Supplier.new({
  'company_name' => '4Parts',
  'address' => '4 Abbey Road, Liverpool LI52TY',
  'contact_name' => 'Dwayne Johnson',
  'contact_job_title' => 'Sales Person',
  'contact_phone_number' => '0141 523 5206'
  })
supplier7 = Supplier.new({
  'company_name' => 'Electric Avenue',
  'address' => '555 Fudgery Lane, Brownsville, Kentucky, 57839 USA',
  'contact_name' => 'Chad Michael Michaels',
  'contact_job_title' => 'Sales Manager',
  'contact_phone_number' => '+1 221 23 5986'
  })
supplier8 = Supplier.new({
  'company_name' => 'L33tHaxxorCPUDeals',
  'address' => 'N/A',
  'contact_name' => 'Anonymous',
  'contact_job_title' => 'Hacker',
  'contact_phone_number' => '619826398173'
  })
supplier9 = Supplier.new({
  'company_name' => 'RAM Stein',
  'address' => '202 Bayerlichstrasse, Dortmund, Deutschland',
  'contact_name' => 'Ulrich von Liechtenstein',
  'contact_job_title' => 'Verkäufer',
  'contact_phone_number' => '+ 43 236 123 0981'
  })
supplier10 = Supplier.new({
  'company_name' => 'Flex IT',
  'address' => '10 Downing Street, Swindon, SW14ED',
  'contact_name' => 'Mary Jane Watson',
  'contact_job_title' => 'Sales Manager',
  'contact_phone_number' => '+44 30 223 5986'
  })

supplier1.save()
supplier2.save()
supplier3.save()
supplier4.save()
supplier5.save()
supplier6.save()
supplier7.save()
supplier8.save()
supplier9.save()
supplier10.save()

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
item2 = Item.new({
    'part_number' => 'i9-9900KS',
    'manufacturer' => 'Intel',
    'description' => '8 Core Processor',
    'category' => 'CPU',
    'condition' => 'New',
    'status' => 'In Stock',
    'quantity' => 50,
    'supplier_id' => supplier1.id,
    'unit_buy_price' => 420.00,
    'target_sell_price' => 550.00,
    'min_sell_price' => 450.00
  })
item3 = Item.new({
    'part_number' => 'i5-2347E',
    'manufacturer' => 'Intel',
    'description' => 'Dual Core Processor',
    'category' => 'CPU',
    'condition' => 'New',
    'status' => 'In Stock',
    'quantity' => 124,
    'supplier_id' => supplier5.id,
    'unit_buy_price' => 100.00,
    'target_sell_price' => 120.00,
    'min_sell_price' => 105.00
  })
item4 = Item.new({
    'part_number' => 'i7-2138S',
    'manufacturer' => 'Intel',
    'description' => 'Quad Core Processor',
    'category' => 'CPU',
    'condition' => 'Refurb',
    'status' => 'In Stock',
    'quantity' => 24,
    'supplier_id' => supplier2.id,
    'unit_buy_price' => 250.00,
    'target_sell_price' => 300.00,
    'min_sell_price' => 260.00
  })
item5 = Item.new({
    'AMD' => '300G',
    'manufacturer' => 'AMD',
    'description' => '8 Core Processor',
    'category' => 'CPU',
    'condition' => 'New',
    'status' => 'In Stock',
    'quantity' => 24,
    'supplier_id' => supplier6.id,
    'unit_buy_price' => 150.00,
    'target_sell_price' => 200.00,
    'min_sell_price' => 160.00
  })
item6= Item.new({
    'part_number' => '1000F',
    'manufacturer' => 'AMD',
    'description' => 'Quad Core Processor',
    'category' => 'CPU',
    'condition' => 'New',
    'status' => 'In Stock',
    'quantity' => 10,
    'supplier_id' => supplier1.id,
    'unit_buy_price' => 65.00,
    'target_sell_price' => 80.00,
    'min_sell_price' => 70.00
  })
item7 = Item.new({
    'part_number' => '684316-181',
    'manufacturer' => 'HP',
    'description' => '16GB PC3-12800R',
    'category' => 'RAM',
    'condition' => 'New',
    'status' => 'In Stock',
    'quantity' => 153,
    'supplier_id' => supplier3.id,
    'unit_buy_price' => 100.00,
    'target_sell_price' => 140.00,
    'min_sell_price' => 110.00
  })
item8 = Item.new({
    'part_number' => '652325-152',
    'manufacturer' => 'HP',
    'description' => '8GB DDR3 PC3-10200S',
    'category' => 'RAM',
    'condition' => 'Refurb',
    'status' => 'In Stock',
    'quantity' => 78,
    'supplier_id' => supplier8.id,
    'unit_buy_price' => 45.00,
    'target_sell_price' => 60.00,
    'min_sell_price' => 50.00
  })
item9 = Item.new({
    'part_number' => 'SNPMGY5TC/16G',
    'manufacturer' => 'Dell',
    'description' => 'Dell 16GB PC3-12800R',
    'category' => 'CPU',
    'condition' => 'New',
    'status' => 'In Stock',
    'quantity' => 245,
    'supplier_id' => supplier1.id,
    'unit_buy_price' => 200.00,
    'target_sell_price' => 220.00,
    'min_sell_price' => 205.00
  })
item10 = Item.new({
    'part_number' => 'SNPMGY5TC/8G',
    'manufacturer' => 'Dell',
    'description' => '8GB DDR4 PC3-10200S',
    'category' => 'RAM',
    'condition' => 'New',
    'status' => 'In Stock',
    'quantity' => 127,
    'supplier_id' => supplier10.id,
    'unit_buy_price' => 60.00,
    'target_sell_price' => 100.00,
    'min_sell_price' => 65.00
  })
item11 = Item.new({
    'part_number' => '46W0796',
    'manufacturer' => 'IBM',
    'description' => '16GB DDR4-17000R',
    'category' => 'RAM',
    'condition' => 'Used',
    'status' => 'In Stock',
    'quantity' => 45,
    'supplier_id' => supplier9.id,
    'unit_buy_price' => 75.00,
    'target_sell_price' => 100.00,
    'min_sell_price' => 80.00
  })
item12 = Item.new({
    'part_number' => '0B26017',
    'manufacturer' => 'IBM',
    'description' => '600GB 10k 2.5"',
    'category' => 'HDD',
    'condition' => 'Used',
    'status' => 'In Stock',
    'quantity' => 95,
    'supplier_id' => supplier9.id,
    'unit_buy_price' => 10.00,
    'target_sell_price' => 17.00,
    'min_sell_price' => 15.00
  })
item13 = Item.new({
    'part_number' => '68V42-EQ',
    'manufacturer' => 'Dell',
    'description' => '1.2TB EquaLogic SAS',
    'category' => 'HDD',
    'condition' => 'New',
    'status' => 'In Stock',
    'quantity' => 42,
    'supplier_id' => supplier8.id,
    'unit_buy_price' => 220.00,
    'target_sell_price' => 265.00,
    'min_sell_price' => 230.00
  })
item14 = Item.new({
    'part_number' => '64Z46-EQ',
    'manufacturer' => 'Dell',
    'description' => '900GB 15k Eqallogic SAS',
    'category' => 'HDD',
    'condition' => 'Refurb',
    'status' => 'In Stock',
    'quantity' => 16,
    'supplier_id' => supplier8.id,
    'unit_buy_price' => 150.00,
    'target_sell_price' => 200.00,
    'min_sell_price' => 165.00
  })
item15 = Item.new({
    'part_number' => 'ST3600057SS',
    'manufacturer' => 'Seagate',
    'description' => '600GB 15k Cheetah SAS',
    'category' => 'HDD',
    'condition' => 'Used',
    'status' => 'In Stock',
    'quantity' => 324,
    'supplier_id' => supplier4.id,
    'unit_buy_price' => 30.00,
    'target_sell_price' => 40.00,
    'min_sell_price' => 33.00
  })
item16 = Item.new({
    'part_number' => '628180-001',
    'manufacturer' => 'HP',
    'description' => '3TB 6g SATA',
    'category' => 'HDD',
    'condition' => 'Used',
    'status' => 'In Stock',
    'quantity' => 224,
    'supplier_id' => supplier7.id,
    'unit_buy_price' => 15.00,
    'target_sell_price' => 22.00,
    'min_sell_price' => 18.00
  })
item17 = Item.new({
    'part_number' => '0B26013',
    'manufacturer' => 'Hitachi',
    'description' => '600GB 10k Hitachi SAS',
    'category' => 'HDD',
    'condition' => 'Used',
    'status' => 'In Stock',
    'quantity' => 14,
    'supplier_id' => supplier1.id,
    'unit_buy_price' => 5.00,
    'target_sell_price' => 10.00,
    'min_sell_price' => 5.00
  })
item18 = Item.new({
    'part_number' => 'ZA2000CM10002',
    'manufacturer' => 'Seagate',
    'description' => '2TB Barracuda SSD 6g',
    'category' => 'SSD',
    'condition' => 'New',
    'status' => 'In Stock',
    'quantity' => 10,
    'supplier_id' => supplier2.id,
    'unit_buy_price' => 400.00,
    'target_sell_price' => 550.00,
    'min_sell_price' => 450.00
  })
item19 = Item.new({
    'part_number' => 'WDBKVX0020PSL-WESN',
    'manufacturer' => 'Western Digital',
    'description' => '2TB MyPassport SSD',
    'category' => 'SSD',
    'condition' => 'New',
    'status' => 'In Stock',
    'quantity' => 3,
    'supplier_id' => supplier4.id,
    'unit_buy_price' => 380.00,
    'target_sell_price' => 4700.00,
    'min_sell_price' => 400.00
  })

item1.save()
item2.save()
item3.save()
item4.save()
item5.save()
item6.save()
item7.save()
item8.save()
item9.save()
item10.save()
item11.save()
item12.save()
item13.save()
item14.save()
item15.save()
item16.save()
item17.save()
item18.save()
item19.save()


binding.pry()
nil
