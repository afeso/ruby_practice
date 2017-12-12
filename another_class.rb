class Customer
  @@no_of_customers = 0
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end

  def display_details()
    puts "Customer ID: #{@cust_id}"
    puts "Cusomer Name: #{@cust_name}"
    puts "Customer Address: #{@cust_addr}"
  end

  def total_no_of_customers()
    @@no_of_customers += 1
    puts "Total Number of Customers: #{@@no_of_customers}"

  end
end

cust1 = Customer.new("1", "John", "Wisdom Apartment, Ludhiya")
cust2 = Customer.new("2", "Poul", "Empire Road, Canada")


# class Sample
#   def hello
#     puts "Moshi Moshi! Ruby Chan."
#   end
# end
#
# object = Sample.new
# object.hello

cust1.display_details
cust2.display_details

cust1.total_no_of_customers
cust2.total_no_of_customers
puts


class Person
  attr_accessor :name
  @@ota_name = ['shiro', 'sama', 'senpai']

  def identity

    if @@ota_name.include?(@name)
      puts "#{@name.capitalize} seems to be a japanese enthusiast."
    else
      puts "#{@name.capitalize}! what a normal name."
    end

  end


end
shiro = Person.new
shiro.name = "shiro"
puts shiro.name
puts shiro.identity
