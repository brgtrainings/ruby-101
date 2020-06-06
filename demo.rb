require_relative "log"

class User
  @@count = 0

  include Log

  def initialize(name, password, phone, address)
    @name = name
    @password = password
    @phone = phone
    @address = address

    update_count
  end

  def show
    puts "- User details"
    puts "Name: #{@name}"
    puts "Phone: #{@phone}"
    puts "Address: #{@address}"
  end

  def self.count
    @@count
  end

  private

  def update_count
    @@count += 1
  end

end

u1 = User.new("brg", "pass123", "1234567891", "Pune, India")
u1.show
puts u1.log("User 1 logging")
puts "Total User: #{User.count}"
u2 = User.new("foo", "pass123", "4567891", "KTM, Nepal")
u2.show
puts u1.log("User 2 logging")
puts "Total User: #{User.count}"


# Exception Handling
puts ""
puts "---" * 10
begin
  if 120 / 0
    puts "Diving some number with zero"
  end
rescue Exception => e
  puts "Catching Error: #{e.message}"
end
