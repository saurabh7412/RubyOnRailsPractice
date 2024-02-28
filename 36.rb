# Method 1

# cities = {
#     "city 1" => 110001,
#     "city 2" => 110002,
#     "city 3" => 110003,
#     "city 4" => 110004,
#     "city 5" => 110005,
#     "city 6" => 110006,
#     "city 7" => 110007,
#     "city 8" => 110008,
#     "city 9" => 110009,
#     "city 10" => 110010
# }


# loop do
#     puts "Do you want to lookup an area code based on a city name? (Y/N)"
#     response = gets.chomp.downcase

#     break if response != "y";

#     puts "List of available cities : -"

#     cities.each do |key, value|
#         puts key
#     end

#     puts "Enter the required city name -"

#     req_city = gets.chomp.downcase
#     flag = true;

#     cities.each do |key, value|
#         if req_city == key
#             puts "Pin Code of #{key} is #{value}"
#             flag = false;
#             break;
#         end
#     end
#     puts "Invalid City entered !! " if flag

# end



# Method 2

dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
# Write code here
    somehash.each do |city, value|
        puts city
    end
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
# Write code here
    somehash.each do |city,value|
        if city == key
            return value
        end
    end

    return "No Such City Found !"

end

# Execution flow
loop do
# Write your program execution code here
    puts "Do you want to choose the city based on the area code? (Y/N)"

    choice = gets.chomp.downcase

    break if choice != "y"

    get_city_names(dial_book)

    puts "Enter the city name -"
    req_city = gets.chomp

    result = get_area_code(dial_book, req_city)
    puts result
end
