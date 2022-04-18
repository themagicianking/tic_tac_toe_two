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
  attr_accessor :tiles

  def initialize
    @tiles = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9}
  end

  def update_score(position, symbol_test)
    @tiles[:position] = symbol_test
  end
end

class Player
  attr_reader :name, :symbol, :choice
  attr_writer :choice

  def initialize
    puts "Hello! What is your name?"
    @name = gets.chomp
    puts "What symbol would you like to use?"
    @symbol = gets
  end

  def turn
    puts "#{name}, please enter the number of the square you would like to mark."
    @choice = gets.to_i
  end
end

class Game
  include Display
  attr_reader :player_one, :player_two, :board

  def initialize
    puts "PLAYER ONE."
    @player_one = Player.new
    puts "PLAYER TWO."
    @player_two = Player.new
    @board = Board.new
  end
end

new_game = Game.new
new_game.display(new_game.board.tiles[:a], 2, 3, 4, 5, 6, 7, 8, 9)
new_game.player_one.turn
new_game.board.update_score(new_game.player_one.choice, new_game.player_one.symbol)