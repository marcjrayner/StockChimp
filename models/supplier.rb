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

end
