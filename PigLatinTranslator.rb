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
      letterArray[0].push(letterArray[0][0], "ay ") # puts the first letter + ay and a space at the end
      letterArray[0].delete_at(0) # deletes the first letter at the beginning
    
      letterArray[0].each do|letter|
        codedMessage += letter
      end
    end
    print("\nCoding your message...")
    sleep(2)
    print("\nPrinting your message...")
    sleep(1)
    print("\nYour coded message is:")
    print("\n\t" + codedMessage + "\n")
  end
  
  def decodeMessage
    print("Input the message you want to decode\n\t")
    message = gets.chomp.downcase;
    message = message.to_s # makes the message a string
    
    wordArray = message.split(" ") # splits message up whenever there is a space and puts them into an array
    letterArray = [];
    codedMessage = "";
  
    wordArray.each do|word|
      letterArray[0] = (word.split("")) # makes an array with each letter being a seperate value
      letterArray[0].delete_at(letterArray[0].length - 1) # deletes the y at the end
      letterArray[0].delete_at(letterArray[0].length - 1) # deletes the a at the end
      letterArray[0].insert(0, letterArray[0][letterArray[0].length - 1]) # puts the last letter and puts it at the beginning
      letterArray[0].delete_at(letterArray[0].length - 1) # deletes the last letter (of the actual word)
      letterArray[0].push(" ") # adds a space to the end of the word
    
      letterArray[0].each do|letter|
        codedMessage += letter
      end
    end
    print("\nDecoding your message...")
    sleep(2)
    print("\nPrinting your message...")
    sleep(1)
    print("\nYour decoded message is:")
    print("\n\t" + codedMessage + "\n")
  end
end

code = CodeMessage.new

print("Do you want to code or decode your Pig Latin message (type code or decode)\n\t")
action = gets.chomp
if action == "code"
  code.codeMessage
elsif action == "decode"
  code.decodeMessage
else
  print("invalid function\n")
end