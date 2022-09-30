def time
    current = Time.new
    current.strftime("%I:%M:%S")
end

def say_hello(name,health=100)
    "I am #{name.capitalize} with a health of #{health} as of #{time}"
end

puts say_hello("Larry",30)
puts say_hello("moe",90)
puts say_hello("jerry",100)
puts say_hello("poppy",40)

