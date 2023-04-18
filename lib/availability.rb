# 1. welcome users to instacart
puts "--------------------------"
puts "Welcome to Instacart"
puts "--------------------------"

# 2. Define our store
store = {
  "kiwi" => 1.25 ,
  "banana" => 0.5,
  "mango" => 4,
  "asparagus" => 9
}


#1. change our cart into a hash of items and quantity
cart = {}

# 4. List the available items with thei prices
puts "In our store today:"
#               key, value
store.each do |item, price|
  puts "#{item}: #{price}€"
end

puts "--------------------"


# LOOP START
loop do

    puts "Which item? (or 'quit' to checkout)"
    item = gets.chomp
    

    if store.key?(item)
        # 2. ask how many items the user wants to add 
        puts "How many?"
        # 3. save the answer
        quantity = gets.chomp.to_i 
        # 4. adjust how we add the item and quantity to our cart 
        cart[item] = quantity
        puts"#{item} added to cart!"


    elsif item == "quit"
        break
    else

        puts "Sorry! #{item} is not in out store"
    end
    # LOOP END
end
# p cart

# 5. change the way we get the items 
puts "You have #{cart.keys.join(', ')} in your cart!"
puts ""
puts "Thanks for shopping at tatchi's"
puts ""


# 6. adjust how we calculate the totals (thinking of quantity)
total_price = 0

puts "-------BILL---------"
cart.each do |item, quantity|
    puts "#{item}: #{quantity}"
    total_price += store[item] * quantity
end


puts "TOTAL: #{total_price}€"
puts "--------------------"
