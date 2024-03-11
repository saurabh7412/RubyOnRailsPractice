puts "*********** Simple Calculator *************"
50.times{print("-")}

flag = "y"
puts

def number_validator(f, text)
  if(!f)
    f = true;
  end

  while(f)
    puts "Enter #{text} ..."
    num = gets.chomp
    if num.length == 0
      puts "------------Value can't be empty...  ------------"
    elsif !num.match?(/^\d+$/)
      puts "------------Invalid value endered...  ------------"
    else
      f = false
      return num
    end
  end
end


while(flag == "y")

  flag_one = true;


  first_num = number_validator(flag_one, "First Number")

  flag_one = false;

  second_num = number_validator(flag_one, "Second Number")

  flag_one = true;

  final_ans = 0

    while(flag_one)

      puts "Enter the operation ( + , - , * , / , % )"
      operator = gets.chomp

      if operator.length == 0
        puts "------------Value can't be empty...  ------------"
      elsif operator == "+"
        final_ans = first_num.to_f + second_num.to_f
        flag_one = false
      elsif operator == "-"
        final_ans = first_num.to_f - second_num.to_f
        flag_one = false
      elsif operator == "*"
        final_ans = first_num.to_f * second_num.to_f
        flag_one = false
      elsif operator == "/"
        final_ans = first_num.to_f / second_num.to_f
        flag_one = false
      elsif operator == "%"
        final_ans = first_num.to_f % second_num.to_f
        flag_one = false
      else
        puts "------------Invalid operator...  ------------"
      end

    end

  puts "--------Calculated answer is #{final_ans}---------"
  puts "--------Wanna try again ? (y/n)---------"
  flag = gets.chomp

end

if flag == "n"
  puts "----------------See You next time !-----------------"
end
