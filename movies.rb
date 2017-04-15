movies = {
  'Empire Strikes Back' => '4'
}
puts "What is your favorite movie?"
answer = gets.chomp

case choice
when "add"
    puts "Added!"
when "update"
    puts "Updated!"
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end