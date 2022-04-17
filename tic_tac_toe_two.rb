module Board
  def display(a, b, c, d, e, f, g, h, i)
    puts "    #{a} | #{b} | #{c}
    --+---+--
     #{d} | #{e} | #{f}
    --+---+--
     #{g} | #{h} | #{i}"
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
  include Board
  attr_reader :player_one, :player_two, :tiles

  def initialize
    puts "PLAYER ONE."
    @player_one = Player.new
    puts "PLAYER TWO."
    @player_two = Player.new
  end

  def tiles
    tiles = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9}
  end

  def turn(player)
    puts "#{player}, please enter the number of the square you would like to mark."
    @choice = gets.to_i
  end
end

new_game = Game.new
new_game.display(new_game.tiles[:a], new_game.tiles[:b], new_game.tiles[:c], new_game.tiles[:d], new_game.tiles[:e], new_game.tiles[:f], new_game.tiles[:g], new_game.tiles[:h], new_game.tiles[:i])
new_game.turn(new_game.player_one.name.to_s.chomp)