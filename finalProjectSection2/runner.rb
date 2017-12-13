require 'pp'
require_relative 'user'

user = User.new 'sebo@example.com', 'Sebo'

pp user

user.save