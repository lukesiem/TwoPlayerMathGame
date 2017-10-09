#creates the players and the lives defines method for loosing a point and game over
class Player 
	attr_accessor :name, :lives

	def initialize(name)
		@name = name
		@lives = 3
	end


	def wrong
		@lives -= 1
	end 

	def youlose 
		@life == 0
	end
end

