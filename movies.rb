movies = {
  Empire_Strikes_Back: 4,
  Tron: 3
}

puts "What would you like to do, add, update, display, or delete?"
choice = gets.chomp.downcase

case choice
when "add"
  puts "What is the title of the movie you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when "update"
  puts "What is the title of the movie you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "That movie isn't in the hash"
  else
    puts "What would you like to change #{title}'s rating to? (Type a number 0 to 4)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with a rating of #{rating}."
  end
when "display"
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when "delete"
  puts "What is the title of the movie you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "That movie isn't in the hash"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Error! You must type either 'add', 'update', 'display' or 'delete'"
end