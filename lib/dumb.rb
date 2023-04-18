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


#3. create an empty cart for the user 
cart = []

# 4. List the available items with thei prices
puts "In our store today:"
#               key, value
store.each do |item, price|
  puts "#{item}: #{price}€"
end

puts "--------------------"


# LOOP START
loop do
# 5. Ask user which item they want to buy
    puts "Which item? (or 'quit' to checkout)"
    item = gets.chomp
    
    # 6. if it's in the store, we add it to the cart
    if store.key?(item)
        cart << item
        puts"#{item} added to cart!"

    # 6b - If the user types quit, we go to checkout
    elsif item == "quit"
        break
    else
        # 6a - if the item is not in the store, we say its out of stock
        puts "Sorry! #{item} is not in out store"
    end
    # LOOP END
end

# 7. List items that have been purchased
puts "You have #{cart.join(', ')} in your cart!"
puts ""
puts "Thanks for shopping at tatchi's"
puts ""

# 8. calculate total price of our items
total_price = 0

cart.each do |item|
    total_price += store[item]
end

# 9. and display it
puts "-------BILL---------"
puts "TOTAL: #{total_price}€"
puts "--------------------"
