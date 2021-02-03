require "./question"
require "./player"

class Taketurn

  # calls question with player name and question. prints to terminal
  # def self.take_turn(player, question)
  #   puts "#{player}: #{question}"
  # end
  def self.print_answer(number)
    puts "#{f.gets.chomp}"
  end

end

Taketurn.print_answer(number)