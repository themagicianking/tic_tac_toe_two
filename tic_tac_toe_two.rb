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
  attr_reader :update_score

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
  attr_reader :name, :symbol, :turns_taken
  attr_accessor :choice

  def initialize(symbol)
    puts 'Hello! What is your name?'
    @name = gets.chomp
    @symbol = symbol
  end

  def turn
    puts "#{name}, please enter the number of the square you would like to mark."
    @choice = gets.to_i
    @turns_taken += @turns_taken
  end
end

class Game
  include Display
  attr_reader :player_one, :player_two, :board, :game_over

  def initialize
    puts 'PLAYER ONE.'
    @player_one = Player.new('x')
    puts 'PLAYER TWO.'
    @player_two = Player.new('o')
    @board = Board.new
    @game_over = 'no'
  end

  def win_check(player, symbol, tiles)
    if tiles[:a] == symbol && tiles[:b] == symbol && tiles[:c] == symbol
      puts "#{player.name}, you win!"
      @game_over = 'yes'
    elsif tiles[:a] == symbol && tiles[:e] == symbol && tiles[:i] == symbol
      puts "#{player.name}, you win!"
      @game_over = 'yes'
    elsif tiles[:a] == symbol && tiles[:d] == symbol && tiles[:g] == symbol
      puts "#{player.name}, you win!"
      @game_over = 'yes'
    elsif tiles[:b] == symbol && tiles[:e] == symbol && tiles[:h] == symbol
      puts "#{player.name}, you win!"
      @game_over = 'yes'
    elsif tiles[:c] == symbol && tiles[:f] == symbol && tiles[:i] == symbol
      puts "#{player.name}, you win!"
      @game_over = 'yes'
    elsif tiles[:c] == symbol && tiles[:e] == symbol && tiles[:g] == symbol
      puts "#{player.name}, you win!"
      @game_over = 'yes'
    elsif tiles[:d] == symbol && tiles[:e] == symbol && tiles[:f] == symbol
      puts "#{player.name}, you win!"
      @game_over = 'yes'
    elsif tiles[:g] == symbol && tiles[:h] == symbol && tiles[:i] == symbol
      puts "#{player.name}, you win!"
      @game_over = 'yes'
    elsif player.turns_taken.to_i > 4
      puts 'You tied!'
    else
      @game_over = 'no'
    end
  end
end

new_game = Game.new

a = new_game.board.tiles[:a]
b = new_game.board.tiles[:b]
c = new_game.board.tiles[:c]
d = new_game.board.tiles[:d]
e = new_game.board.tiles[:e]
f = new_game.board.tiles[:f]
g = new_game.board.tiles[:g]
h = new_game.board.tiles[:h]
i = new_game.board.tiles[:i]

new_game.display(new_game.board.tiles[:a], new_game.board.tiles[:b], new_game.board.tiles[:c],
new_game.board.tiles[:d], new_game.board.tiles[:e], new_game.board.tiles[:f],
new_game.board.tiles[:g], new_game.board.tiles[:h], new_game.board.tiles[:i])

while new_game.game_over == 'no' || new_game.player_one.turns_taken < 5
  new_game.win_check(new_game.player_two, 'o', new_game.board.tiles)
  break if new_game.game_over == 'yes' || new_game.player_one.turns_taken == 5

  new_game.player_one.turn
  new_game.board.update_score(new_game.player_one.choice, 'x', 'o')
  new_game.display(new_game.board.tiles[:a], new_game.board.tiles[:b], new_game.board.tiles[:c],
  new_game.board.tiles[:d], new_game.board.tiles[:e], new_game.board.tiles[:f],
  new_game.board.tiles[:g], new_game.board.tiles[:h], new_game.board.tiles[:i])
  new_game.win_check(new_game.player_one, 'x', new_game.board.tiles)
  break if new_game.game_over == 'yes' || new_game.player_one.turns_taken == 5

  new_game.player_two.turn
  new_game.board.update_score(new_game.player_two.choice, 'o', 'x')
  new_game.display(new_game.board.tiles[:a], new_game.board.tiles[:b], new_game.board.tiles[:c],
  new_game.board.tiles[:d], new_game.board.tiles[:e], new_game.board.tiles[:f],
  new_game.board.tiles[:g], new_game.board.tiles[:h], new_game.board.tiles[:i])
end
