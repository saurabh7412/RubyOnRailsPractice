# My Attempt


users = [
    {name: "user1", password: "pass1"},
    {name: "user2", password: "pass2"},
    {name: "user3", password: "pass3"},
    {name: "user4", password: "pass4"},
    {name: "user5", password: "pass5"},
]


puts "Welcome to the Authentication Service"

25.times { print("-")}

puts

flag = true;
attempts = 1;

while(flag)
    puts "Enter Username -"
    user = gets.chomp
    puts "Enter Password -"
    pass = gets.chomp

    isSuccess = false;

    users.each do |ele|
        if ele[:name] == user && ele[:password] == pass
          puts "Login Successful"
          isSuccess = true
          break
        end
    end

    if(!isSuccess)
        puts "Wrong Credentials !"
        attempts += 1;
        puts "Attempts left - #{4-attempts}"
        if(attempts == 4)
            puts "All attempts used try after 3 hrs..."
            break;
        end
    end

    puts "Press n to stop or any key to continue..."
    iscont = gets.chomp;

    if(iscont == "n")
        flag = false;
        puts "See U Again !!!"
    end
end



# ------------------------------------------------------------------------------------------------------


Text lecture: Authenticator project code
# users array where username and password are stored
users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

# authentication method to check and verify if username/password combination exists
def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "Credentials were not correct"
end

# program execution flow
puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4
