module Display
  def display(a, b, c, d, e, f, g, h, i)
    puts "    #{a} | #{b} | #{c}
    --+---+--
     #{d} | #{e} | #{f}
    --+---+--
     #{g} | #{h} | #{i}"
  end
end

class Board
  def initialize
    @tiles = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9}
  end

  def update_score(position, symbol_test)
    @tiles[:position] = symbol_test
  end
end

class Player
  attr_reader :name, :symbol

  def initialize
    puts "Hello! What is your name?"
    @name = gets
    puts "What symbol would you like to use?"
    @symbol = gets
  end
end

class Game
  include Display
  attr_reader :player_one, :player_two, :board, :choice

  def initialize
    puts "PLAYER ONE."
    @player_one = Player.new
    puts "PLAYER TWO."
    @player_two = Player.new
    @board = Board.new
  end

  def turn(player, whose_turn)
    puts "#{player}, please enter the number of the square you would like to mark."
    @choice = gets.to_i
  end
end

new_game = Game.new
new_game.turn(new_game.player_one.name.to_s.chomp, new_game.player_one)
new_game.board.update_score(new_game.choice, new_game.player_one.symbol)