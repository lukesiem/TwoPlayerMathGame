require './player.rb'
require './question.rb'

@player1 = Player.new("Dorito")
@player2 = Player.new("Dave")

puts "ITS ON LIKE DONKEY KONG"
puts "Welcome to Math Game With Dorito and Dave. Are you Ready to Add?"

def turn (current_player)
	puts "#{current_player.name}: What does #{Question.num1} plus #{Question.num2} equal?"

	answer = gets.chomp

	if Question.correct(answer)
		puts " RightttooO! Well Done!"
	else
		puts " WRONGO BOYO!"
		current_player.wrong
	end

	puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
end



loop do
  turn(@player1)
  break puts "Dave wins with a score of #{@player2.life}/3" if (@player1.youlose ) 
  turn(@player2)
  break puts "Dorito wins with a score of #{@player1.life}/3" if (@player2.youlose )
  puts " "
  puts "------- Next Round -------"
end

puts " game over man"
