require_relative('../db/sql_runner.rb')

class Supplier

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @company_name = options['company_name']
    @address = options['address']
    @contact_name = options['contact_name']
    @contact_job_title = options['contact_job_title']
    @contact_phone_number = options['contact_phone_number']
  end

  def save()
    sql = "INSERT INTO suppliers
    (
      company_name,
      address,
      contact_name,
      contact_job_title,
      contact_phone_number
    )
    VALUES
    (
      $1, $2, $3, $4, $5
    )
    RETURNING id;"
    values = [@company_name, @address, @contact_name, @contact_job_title, @contact_phone_number]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM suppliers;"
    suppliers = SqlRunner.run(sql)
    return suppliers.map { |s| Supplier.new(s) }
  end

  def self.find(id)
    sql = "SELECT * FROM suppliers
    WHERE id = $1;"
    values = [id]
    s = SqlRunner.run(sql, values)
    return Supplier.new(s.first)
  end

end
