# Arrays for adjectives, cooking styles, and foods created
adj = ["hot", "spicy", "greasy", "chunky", "colorful", "nasty", "cold", "salty", "sweet", "tender"]
cooking_style = ["baked", "broiled", "grilled", "pan-fried", "fried", "steamed", "boiled", "steamed", "seared", "roasted"]
food = ["eggs", "noodles", "soup", "pumpkin", "cake", "cherries", "dumplings", "nuts", "collards", "toast"]

user_adj = Array.new
user_cooking_style = Array.new
user_food = Array.new

puts "Let's make a menu\n\n"

# While loop, User item number input
while true
  # Prompts user for number of items
  puts "How many items would you like to order? 10 or less."
  # Declares new variable as an integer
  new_amount = gets.chomp.to_i
  # If new_amount is 1-10 times loop activates
  # Times loop runs new_amount times
  if new_amount < 11
    puts "Would you like to make your own menu?"
    user_menu = gets.chomp.upcase

    if user_menu != "NO"

      # Fills in arrays for categories
      new_amount.times do |i|
        puts "List an adjective."
        user_adj[i] = gets.chomp
      end

      p user_adj

      new_amount.times do |i|
        puts "List a cooking style."
        user_cooking_style[i] = gets.chomp
      end

      p user_cooking_style

      new_amount.times do |i|
        puts "List a food."
        user_food[i] = gets.chomp
      end

      p user_food

      new_amount.times do |i|
        puts (i + 1).to_s + ". " + user_adj.sample + " " + user_cooking_style.sample + " " + user_food.sample
      end
      # Terminates the most internal loop
      break
    else
      new_amount.times do |i|
        puts (i + 1).to_s + ". " + adj.sample + " " + cooking_style.sample + " " + food.sample
      end
      # Terminates the most internal loop
      break
    end
  end
  # If user doesn't enter a num 1-10 loop restarts
  puts "That's not a valid amount!"
end

puts "\nOh how delicious!"
