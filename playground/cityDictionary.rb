dial_book = {
  'newyork' => '212',
  'london' => '4456',
  'chicago' => '7778',
  'munich' => '09221',
  'berlin' => '555666',
  'newcastle' => '18727',
  'dellaware' => '334411',
  'losangeles' => '98776',
  'newdehli' => '537281',
  'mumbai' => '221133'
}

# method to select a city by postcode
def select_city_by_post_code(postcode); end

# method to lookup the dialbokk for a specific key (cityname)
def get_area_code(somehash, key)
  somehash[key]
end

# method to display all city names
def display_city_names(somehash)
  somehash.each_key { |k, _v| puts k.capitalize }
end

# input section
loop do
  puts 'Do you want to lookup an area code based on a city name? (Y/N)'
  answer = gets.chomp.upcase

  # First choice for user to move on or quit
  if answer != 'Y'
    puts 'i´m sorry you don´t want to continue. See you next time!'
    break
  end
  # offer the dial book to the user for selection
  puts 'Which city do you want to lookup for its area code?'
  display_city_names(dial_book)

  # user input for his choice
  puts 'Enter the cityname you want to lookup!'
  prompt = gets.chomp.downcase

  # check for valid or invalid user input
  if dial_book.include?(prompt)
    # if city name is valid, return the correct area code
    puts "The area code for #{prompt.capitalize} is: #{get_area_code(dial_book, prompt)}"
  else
    # else display error message
    puts 'You entered a not valid cityname!'
  end
end
