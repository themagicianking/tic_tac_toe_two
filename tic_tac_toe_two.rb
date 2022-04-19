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
    @tiles = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9 }
  end

  def update_score(position, current_symbol, other_symbol)
    if position == @tiles[:a]
      @tiles[:a] = current_symbol
    elsif position == @tiles[:b]
      @tiles[:b] = current_symbol
    elsif position == @tiles[:c]
      @tiles[:c] = current_symbol
    elsif position == @tiles[:d]
      @tiles[:d] = current_symbol
    elsif position == @tiles[:e]
      @tiles[:e] = current_symbol
    elsif position == @tiles[:f]
      @tiles[:f] = current_symbol
    elsif position == @tiles[:g]
      @tiles[:g] = current_symbol
    elsif position == @tiles[:h]
      @tiles[:h] = current_symbol
    elsif position == @tiles[:i]
      @tiles[:i] = current_symbol
    else
      puts 'error!'
    end
  end
end

class Player
  attr_reader :name, :symbol
  attr_accessor :choice

  def initialize
    puts 'Hello! What is your name?'
    @name = gets.chomp
    puts 'What symbol would you like to use?'
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
    puts 'PLAYER ONE.'
    @player_one = Player.new
    puts 'PLAYER TWO.'
    @player_two = Player.new
    @board = Board.new
  end

  def win_check(player, symbol, tiles)
    if tiles[:a] == symbol && tiles[:b] == symbol && tiles[:c] == symbol
      puts "#{player}, you win!"
    elsif tiles[:a] == symbol && tiles[:e] == symbol && tiles[:i] == symbol
      puts "#{player}, you win!"
    else
      puts "hmm...it's not working."
    end
  end
end

new_game = Game.new

new_game.display(new_game.board.tiles[:a], new_game.board.tiles[:b], new_game.board.tiles[:c],
new_game.board.tiles[:d], new_game.board.tiles[:e], new_game.board.tiles[:f],
new_game.board.tiles[:g], new_game.board.tiles[:h], new_game.board.tiles[:i])

new_game.player_one.turn

new_game.board.update_score(new_game.player_one.choice, new_game.player_one.symbol.chomp,
new_game.player_two.symbol.chomp)

new_game.display(new_game.board.tiles[:a], new_game.board.tiles[:b], new_game.board.tiles[:c],
new_game.board.tiles[:d], new_game.board.tiles[:e], new_game.board.tiles[:f],
new_game.board.tiles[:g], new_game.board.tiles[:h], new_game.board.tiles[:i])

new_game.player_two.turn

new_game.board.update_score(new_game.player_two.choice, new_game.player_two.symbol.chomp,
new_game.player_one.symbol.chomp)

new_game.display(new_game.board.tiles[:a], new_game.board.tiles[:b], new_game.board.tiles[:c],
new_game.board.tiles[:d], new_game.board.tiles[:e], new_game.board.tiles[:f],
new_game.board.tiles[:g], new_game.board.tiles[:h], new_game.board.tiles[:i])

# look up that thingy that measures how many times a method has been called to use it on player one's turn and stop it after three turns to check win conditions but for now, quick n dirty coding

new_game.player_one.turn

new_game.board.update_score(new_game.player_one.choice, new_game.player_one.symbol.chomp,
new_game.player_two.symbol.chomp)

new_game.display(new_game.board.tiles[:a], new_game.board.tiles[:b], new_game.board.tiles[:c],
new_game.board.tiles[:d], new_game.board.tiles[:e], new_game.board.tiles[:f],
new_game.board.tiles[:g], new_game.board.tiles[:h], new_game.board.tiles[:i])

new_game.player_two.turn

new_game.board.update_score(new_game.player_two.choice, new_game.player_two.symbol.chomp,
new_game.player_one.symbol.chomp)

new_game.display(new_game.board.tiles[:a], new_game.board.tiles[:b], new_game.board.tiles[:c],
new_game.board.tiles[:d], new_game.board.tiles[:e], new_game.board.tiles[:f],
new_game.board.tiles[:g], new_game.board.tiles[:h], new_game.board.tiles[:i])

new_game.player_one.turn

new_game.board.update_score(new_game.player_one.choice, new_game.player_one.symbol.chomp,
new_game.player_two.symbol.chomp)

new_game.display(new_game.board.tiles[:a], new_game.board.tiles[:b], new_game.board.tiles[:c],
new_game.board.tiles[:d], new_game.board.tiles[:e], new_game.board.tiles[:f],
new_game.board.tiles[:g], new_game.board.tiles[:h], new_game.board.tiles[:i])

=begin new_game.player_two.turn

new_game.board.update_score(new_game.player_two.choice, new_game.player_two.symbol.chomp,
new_game.player_one.symbol.chomp)

new_game.display(new_game.board.tiles[:a], new_game.board.tiles[:b], new_game.board.tiles[:c],
new_game.board.tiles[:d], new_game.board.tiles[:e], new_game.board.tiles[:f],
new_game.board.tiles[:g], new_game.board.tiles[:h], new_game.board.tiles[:i])
=end

# insert method to check winning here

new_game.win_check(new_game.player_one.name, new_game.player_one.symbol.chomp, new_game.board.tiles)