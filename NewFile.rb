class CodeMessage
  def codeMessage
    print("Input the message you want to be coded\n\t")
    message = gets.chomp.downcase;
    message = message.to_s # makes the message a string
    
    wordArray = message.split(" ") # splits message up whenever there is a space and puts them into an array
    letterArray = [];
    codedMessage = "";
  
    wordArray.each do|word|
      letterArray[0] = (word.split("")) # makes an array with each letter being a seperate value
      letterArray[0].push(letterArray[0][0], " ") # puts the first letter and a space at the end
      letterArray[0].delete_at(0) # deletes the first letter at the beginning
    
      letterArray[0].each do|letter|
        codedMessage += letter
      end
    end
  end
end

code = CodeMessage.new
code.codeMessage