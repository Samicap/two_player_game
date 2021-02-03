class Question

  # add question  What does # plus # equal?
  def self.print_question(player)
    firstNumber = rand(1..20)
    secondNumber = rand(1..20)
    puts " #{player.name} What does #{firstNumber} plus #{secondNumber} equal?"
  end

end

class Player

  attr_accessor :name


end

Player1 = Player.new

Question.print_question