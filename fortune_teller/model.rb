# this contains all of the ruby code / back end code
def get_fortune 
  fortunes_array = [
    "you will win 20 goats soon",
    "you will marry Shawn Mendes",
    "you will find $20 dollars, but then spend it on a cheap sweater",
    "you will be awarded a nobel peace prize for computer science research",
    ]
    
  return fortunes_array.sample
end 