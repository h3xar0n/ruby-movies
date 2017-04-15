movies = {
  'Empire Strikes Back' => '4'
}
puts "What would you like to do, add, update, display, or delete?"
choice = gets.chomp

case choice
when "add"
  puts "What is the title of the movie you want to add?"
  title = gets.chomp
  puts "On a scale of 1 to 4, how would you rate the movie?"
  rating = gets.chomp
  if movies[title.to_sym].nil?
      movies[title.to_sym] = rating.to_i
  else 
    puts title + " is already saved!"
  end
when "update"
  puts "Updated!"
when "display"
  puts "Movies!"
when "delete"
  puts "Deleted!"
else
  puts "Error!"
end