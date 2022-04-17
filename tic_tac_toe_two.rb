class Board
  def initialize
  end

  def board_display(a, b, c, d, e, f, g, h, i)
    puts "    #{a} | #{b} | #{c}
    --+---+--
     #{d} | #{e} | #{f}
    --+---+--
     #{g} | #{h} | #{i}"
  end
end

class Player
  def initialize
    puts "Hello! What is your name?"
    @name = gets
    puts "What symbol would you like to use?"
    @symbol = gets
  end

  def taken_spaces
    @spaces = [ 1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def turn
    puts "Which square would you like to mark?"
    @choice = gets
    # gets player input
    # change whatever variable they picked to @symbol
  end

  def win_status?
    # check if the player meets winning conditions
    # if "win", puts "you won!"
    # if not, continue
  end
end

class Game
  def initialize
    @player_one = Player.new
    @player_two = Player.new
    @board = Board.new
  end

  def display
    @board.board_display(1, 2, 3, 4, 5, 6, 7, 8, 9)
  end
end

first_game = Game.new
first_game.display

# so the second to last player's filled spaces get pulled in
# then the last player
# then a new instance of the board would be generated