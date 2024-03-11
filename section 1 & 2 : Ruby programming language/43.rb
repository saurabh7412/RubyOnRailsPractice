require_relative '44-crud-module'

users = [
          { username: "Saurabh", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

secure_user = Crud.create_secure_user(users)

# puts secure_user
puts Crud.authenticate_user("Saurabh", 'password1', users)

