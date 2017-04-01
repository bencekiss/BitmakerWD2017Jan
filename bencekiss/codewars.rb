# def scramble(s1,s2)
#   newstr = ""
#   s2.each_char do |c2|
#     s1.each_char do |c1|
#       if c1 == c2
#         # puts "before " + s1
#         newstr += c1
#         s1.slice!(s1.index(c1))
#         # puts "#{newstr} is after getting #{c1}"
#         break
#       end
#     end
#   end
#   newstr == s2 ? true : false
# end
#
#
# puts scramble('rkqodlw','world')
# puts scramble('cedewaraaossoqqyt','codewars')
# puts scramble('katas','steak')
# puts scramble('scriptjava','javascript')
# puts scramble('scriptingjava','javascript')


def integ(number)
  i = 0
  
  while i < 20
    number / (10**i) > 0 ? i+=1 : break
  end
  digits = []
  (i..0).each do |pow|
    temp = number / (10**pow)
    digits << temp
    number = temp
  end
  puts digits
end


puts integ(1234)
