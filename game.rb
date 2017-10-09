#requires other files
require './player.rb'
require './question.rb'

#instantiates the players 
@player1 = Player.new("Dorito")
@player2 = Player.new("Dave")

#intro text
puts "ITS ON LIKE DONKEY KONG"
puts "Welcome to Math Game With Dorito and Dave. Are you Ready to Monkey Around and Add Some Numbers?"

#defines what happens for a player turn
def turn (current_player)
	puts "#{current_player.name}: What does #{Question.num1} plus #{Question.num2} equal?"

	answer = gets.chomp

	if Question.correct(answer)
		puts " RightttooO! Well Done!"
	else
		puts " WRONGO BOYO!"
		current_player.wrong
	end

	
end

#loops through turn conditions 

loop do
  turn(@player1)
  puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3" 
  break puts "Dave wins with a score of #{@player2.lives}/3" if (@player1.youlose )
  
  turn(@player2)
  puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"

  break puts "Dorito wins with a score of #{@player1.lives}/3" if (@player2.youlose )
 
  puts "------- Next Round -------"
  puts "------- ADD! -------"
end

puts " Game Over Man"
puts "later!"
