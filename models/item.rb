require_relative('../db/sql_runner.rb')

class Item

  attr_reader :id
  attr_accessor :part_number, :manufacturer, :description, :category,
  :condition, :status, :quantity, :supplier_id, :unit_buy_price,
  :target_sell_price, :min_sell_price


  def initialize(options)
    @id = options['id'].to_i if options['id']
    @part_number = options['part_number']
    @manufacturer = options['manufacturer']
    @description = options['description']
    @category = options['category']
    @condition = options['condition']
    @status = options['status']
    @quantity = options['quantity'].to_i
    @supplier_id = options['supplier_id'].to_i
    @unit_buy_price = options['unit_buy_price']
    @target_sell_price = options['target_sell_price']
    @min_sell_price = options['min_sell_price']
  end

  def save()
    sql = "INSERT INTO items
    (
      part_number,
      manufacturer,
      description,
      category,
      condition,
      status,
      quantity,
      supplier_id,
      unit_buy_price,
      target_sell_price,
      min_sell_price
    )
    VALUES
    (
      $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11
    )
    RETURNING id;"
    values = [@part_number, @manufacturer, @description, @category, @condition,
      @status, @quantity, @supplier_id, @unit_buy_price, @target_sell_price,
      @min_sell_price]
    results = SqlRunner.run(sql, values)
    @id = results[0]['id'].to_i
  end

  def update()
    sql = "UPDATE items
    SET
    (
      part_number,
      manufacturer,
      description,
      category,
      condition,
      status,
      quantity,
      supplier_id,
      unit_buy_price,
      target_sell_price,
      min_sell_price
    ) =
    (
      $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11
    )
    WHERE id = $12"
    values = [@part_number, @manufacturer, @description, @category, @condition,
      @status, @quantity, @supplier_id, @unit_buy_price, @target_sell_price,
      @min_sell_price, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM items
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end
  #
  # def get_supplier()
  #   sql = "SELECT * FROM suppliers
  #   WHERE id = $1"
  #   values = [@supplier_id]
  #   result = SqlRunner.run(sql, values)
  #   if result == nil
  #     return "no supplier"
  #   else
  #     return Supplier.new(result)
  #   end
  # end

  def get_supplier()
    supplier = Supplier.find(supplier_id)
    return supplier
  end

  def self.all()
    sql = "SELECT * FROM items;"
    items = SqlRunner.run(sql)
    return items.map { |i| Item.new(i) }
  end

  def self.find(id)
    sql = "SELECT * FROM items
    WHERE id = $1;"
    values = [id]
    s = SqlRunner.run(sql, values)
    return Item.new(s[0])
  end

  def self.delete_all
    sql = "DELETE FROM items"
    SqlRunner.run(sql)
  end


end
