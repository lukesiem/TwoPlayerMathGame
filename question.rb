# generates the addition questions and check the users answer
class Question 
	attr_reader :num1, :num2

	def self.num1
		@num1 = rand(1..100)
	end

	def self.num2
		@num2 = rand(1..100)
	end

	def self.correct(input)
		input.to_i == (@num1 + @num2)
	end
end