require 'bcrypt'

users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]
def create_pass(pass)
    BCrypt::Password.create(pass)
end


def create_secure_user(list)
    list.each do |user|
        user[:password] = create_pass(user[:password])
    end
    return list
end

secure_data = create_secure_user(users)

puts secure_data
puts secure_data[0][:password]
puts secure_data[0][:password] == "password1"

# def verify_pass(pass)
#     BCrypt::Password.new(pass)
# end

# check_pass = verify_pass(secure_data[0][:password])
# puts check_pass

# puts password1
