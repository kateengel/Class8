#def add_numbers(x,y)
#x + y
#end
#add_numbers(2,10)

def make_img_tag(x)

"<img src='" + x +"'/>"

end

y = make_img_tag('/funny_cat.gif')

puts y

person = {name: "Kate", favcolor: "Blue"}

color = "Red"

if color == person[:favcolor]

puts "How exciting"

else

puts "Try Again"

end
