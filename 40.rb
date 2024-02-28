class Student
    @first_name
    @last_name
    @email
    @user_name
    @password

    def to_s
        "First name : #{@first_name}"
    end
end

student1 = Student.new
puts student1
