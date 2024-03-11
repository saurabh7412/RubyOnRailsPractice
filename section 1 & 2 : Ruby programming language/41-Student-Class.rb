class Student
    attr_accessor :first_name, :last_name, :email, :user_name, :password

    def initialize(firstname, lastname, email, username, password)
      @first_name = firstname
      @last_name = lastname
      @email = email
      @user_name = username
      @password = password
    end

    def to_hash
       {
            first_name: @first_name,
            last_name: @last_name,
            email: @email,
            user_name: @user_name,
            password: @password
        }
    end
end

student1 = Student.new("Saurabh", "Bhatt", "S@gmail.com", "saurabh7412", "Password1")
puts student1.to_hash

