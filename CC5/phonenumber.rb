def create_phone_number(temp)
  if temp.length > 10
    raise "Too many numbers"
  end
  number = "("
  temp.each do |num|
    if temp.index(num) == 3
      number += ") "
    elsif temp.index(num) == 6
      number += "-"
    end
    number += num.to_s
  end
  number
end

def valid_phone_number(number)
  if number[0] == "(" && number[4] == ")" && number[5] == " " && number[9] == "-"
    return true
  end
  false
end



phone = [1,2,3,4,5,6,7,8,9,0]

phonenumber = create_phone_number(phone)
puts valid_phone_number(phonenumber)
