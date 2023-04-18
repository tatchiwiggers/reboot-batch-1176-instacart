# 1. welcome users to instacart
puts "--------------------------"
puts "Welcome to Instacart"
puts "--------------------------"

# 2. Adjust our store to show availability
store = {
            "kiwi" => { price: 1.25, availability: 5 },
            "banana" => { price: 0.5, availability: 2 },
            "mango" => { price: 4, availability: 7 },
            "asparagus" => { price: 9, availability: 3 },
        }

cart = {}


puts "In our store today:"

loop do
    
    store.each do |item, info|
        puts "#{item}: #{info[:price]}€ (#{info[:availability]} available)"
    end
    puts "--------------------"


# LOOP START

    puts "Which item? (or 'quit' to checkout)"
    item = gets.chomp
    

    if store.key?(item)
        puts "How many?"
        quantity = gets.chomp.to_i 
        
        # 3. if quantity is <= availability, add that to cart
        availability = store[item][:availability]
        if quantity <= availability
            cart.key?(item) ? cart[item] += quantity : cart[item] = quantity
            puts "#{item} added to cart!"
            puts ""
            # 4. subtract the quantity purchased from the availability
            store[item][:availability] -= quantity
        else
            # 5. if the quantity is greater than the availability, DONT add that item 
            puts"Sorry, there are only #{availability} #{item} left!"
            puts ""
        end

    elsif item == "quit"
        break
    else
        puts "Sorry! #{item} is not in out store"
    end
    # LOOP END
end
p cart


puts "You have #{cart.keys.join(', ')} in your cart!"
puts ""
puts "Thanks for shopping at tatchi's"
puts ""


# 6. adjust how we calculate the bill (thinking of quantity)
total_price = 0

puts "-------BILL---------"
cart.each do |item, quantity|
    price = store[item][:price]
    puts "#{item}: #{quantity} x #{price}€ = #{price * quantity}€"
    total_price += price * quantity
end


puts "TOTAL: #{total_price}€"
puts "--------------------"
