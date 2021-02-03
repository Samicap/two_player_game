require './question'
require './player'


playerOne = Player.new("Player 1", 3)
playerTwo = Player.new("Player 2", 3)

question = Question.new
question.run(playerOne, playerTwo)





