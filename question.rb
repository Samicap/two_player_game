require "./player"

class Question
  # add question  What does # plus # equal?
  # can add a player into string with template literals
  def initialize(points)
    @sumOfNumbers = 0
    @points = points
    @player1 = Player.new("Player 1", points)
    @player2 = Player.new("Player 2", points)
  end

  def print_question(player)
    firstNumber = rand(1..20)
    secondNumber = rand(1..20)
    @sumOfNumbers = firstNumber + secondNumber
    puts "#{player.name}: What does #{firstNumber} plus #{secondNumber} equal?"
  end
  
  def get_answer()
    answer = gets.chomp
    return answer
  end

  def check_answer(answer, player)
    if @sumOfNumbers == answer.to_i
      puts "#{player.name}: Yes! You are correct!"
    else 
      puts "#{player.name}: Seriously? No!"
      player.points = player.points - 1
    end
  end

  def run()
    turn = 1
    isOver = false

    while not isOver do
      if turn.odd? #true
        current_player = @player1
      else
        current_player = @player2
      end

      puts "----- NEW TURN -----"
      print_question(current_player)
      answer = get_answer()
      check_answer(answer, current_player)

      # prints updates player points
      puts "P1: #{@player1.points}/3 vs P2: #{@player2.points}/3"

      if current_player.points == 0
        isOver = true
      end

      turn += 1

    end
    # Determine winner
    if @player1 == current_player
      winner = @player2
    else
      winner = @player1
    end
    puts "#{winner.name} wins with a score of #{winner.points}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"

  end

end

