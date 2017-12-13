# definition for user class and its methods

module Destructable
  def destroy(anyobject)
    puts 'I will destroy anyobject'
  end
end

class User
  include Destructable
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end

  def run
    puts 'Hey im running'
  end
end

class Buyer < User
end

class Seller < User
end

class Admin < User
end

user = User.new('John', 'john@example.com')
user.destroy('myname')
