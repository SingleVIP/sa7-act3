ROOM_POINTS = {
  1 => 5,
  2 => 10,
  3 => 15
}
total_points = 0
puts "Welcome to the Adventure Game!"
puts "You have #{total_points} points."

loop do
  puts "Choose a room (1-3) to enter or 'exit' to end the game:"
  choice = gets.chomp.downcase
  break if choice == 'exit'
  if ROOM_POINTS.key?(choice.to_i)
    total_points += ROOM_POINTS[choice.to_i]
    puts "You entered Room #{choice} and earned #{ROOM_POINTS[choice.to_i]} points."
    puts "Total points: #{total_points}"
  else
    puts "Invalid choice. Please enter a valid room number or 'exit' to end the game."
  end
end

puts "Game over! You collected a total of #{total_points} points."
