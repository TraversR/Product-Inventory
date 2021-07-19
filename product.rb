class Product

  def initialize(product_number, description, retail, cost, quantity_on_hand)
    @product_number = product_number
    @description = description
    @retail = retail
    @cost = cost
    @quantity_on_hand = quantity_on_hand

  end

  def sale(amount_to_sell)

    if @quantity_on_hand - amount_to_sell < 0
      puts "You can NOT sell more than you have in stock."
      puts "You tried to sell #{amount_to_sell}."
      puts "You only have #{@quantity_on_hand} in stock."
      puts "This would make your stock be #{@quantity_on_hand - amount_to_sell}"
    else
      @quantity_on_hand -= amount_to_sell
      puts "You are selling #{amount_to_sell} #{@description} at the price of $#{@retail} each."
    puts "You now have #{@quantity_on_hand} left."
      total_cost = amount_to_sell * @quantity_on_hand * 0.06
      puts "the total cost after taxes is #{total_cost}"

      end
  end

  def display
    puts "Product number: #{@product_number}"
    puts "Item is: #{@description}"
    puts "Retail Price: #{@retail}"
    puts "Cost to company: #{@cost}"
    puts "Quantity: #{@quantity_on_hand}"
  end


end
