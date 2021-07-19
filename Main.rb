require_relative 'Product'

user_selection = 0
products = []

# Loop until "4" is entered to exit menu.
until user_selection == 4
  # Menu
  puts "1. Create a new product."
  puts "2. Display Products Information."
  puts "3. Process a product purchase."
  puts "4. Exit."
  user_selection = gets.chomp.to_i

# Creates a new product
  case user_selection
  when 1


    puts "What is the product number?"
    product_number = gets.chomp.to_i
    puts "Describe this product:"
    description = gets
    puts "How much did this item cost the company to buy?"
    cost = gets.chomp.to_f
    puts "How much is this item going to be sold for?"
    retail = gets.chomp.to_f
    puts "How many of this item are in stock?"
    quantity_on_hand = gets.chomp.to_i

    # Stores new product to array
    product = Product.new(product_number, description, cost, retail, quantity_on_hand)
    products.push(product)
  end
  case user_selection
    # Looks up a product by number and displays info on that product
  when 2


    menu_needed = true
    number_of_products = products.length
    if number_of_products < 1
      menu_needed = false
    end

    count = 0
    while count < products.length && menu_needed
      puts "Item #{count + 1}:"
      puts " #{products[count].display}"
      puts '-----------------------------------'
      count += 1
    end


  end
# Processes a product purchase
  case user_selection
  when 3
    # Display all product info for products with quantity > 0
    puts "Item processing menu"
    puts
    puts "Select your product: "

    menu_needed = true
    number_of_products = products.length

    if number_of_products < 1
      menu_needed = false
    end
    count = 0
    while count < products.length && menu_needed
      puts "Item #{count + 1}:"
      puts "#{products[count].display}"
      puts '-------------------------------------'
      count += 1
    end

    puts "Which product is being sold?"
    product_to_sell = gets.chomp.to_i
    puts "How many of this product is to be sold?"
    amount_to_sell = gets.chomp.to_i
    products[product_to_sell - 1].sale(amount_to_sell)


  end
end

