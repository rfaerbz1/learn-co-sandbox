def calculator

 $equations = []
 
 def calculation (array1, number1, operation, number2)
   if operation == "+"
     sum = number1 + number2
     equation = "#{number1.to_s} + #{number2.to_s} = #{sum}"
   elsif operation == "-"
     sum = number1 - number2
     equation = "#{number1.to_s} - #{number2.to_s} = #{sum}"
   elsif operation == "*"
     sum = number1 * number2
     equation = "#{number1.to_s} * #{number2.to_s} = #{sum}"
   elsif operation == "/"
     sum = number1 / number2
     equation = "#{number1.to_s} / #{number2.to_s} = #{sum}"
   end
   
   array1.push(equation)
   puts array1[array1.length - 1]
   puts array1.length
   puts ""
 end
 
 puts "Enter an equation in the form of:"
 puts "number"
 puts "operation"
 puts "number"
 puts "="
 puts ""
 puts "or"
 puts ""
 puts "type: previous equations, to see previous equations"
 
 bob = []
  loop do
    answer = gets.chomp
    # bob.push(answer)
    if answer == "="
       break
    elsif answer == "previous equations"
      puts "hi"
      puts $equations
      #break
    else 
      bob.push(answer)
    end
  end
 
 calculation($equations, bob[0].to_i, bob[1], bob[2].to_i)
end

loop do
calculator
end