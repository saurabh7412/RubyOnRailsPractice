
module Crud
    require 'bcrypt'
    puts 'Crud loaded sucessfully'

    def create_pass(pass)
        BCrypt::Password.create(pass)
    end


    def create_secure_user(list)
        list.each do |user|
        user[:password] = create_pass(user[:password])
        end
        return list
    end


    def verify_pass(pass)
        BCrypt::Password.new(pass)
    end


    def authenticate_user(username, password, list)

            list.each do |user|
                if user[:username] == username &&  verify_pass(user[:password]) == password
                    return "Successful Authentication with - #{user}"
                end
            end
        "Wrong Credentials entered !!!"
    end

end
