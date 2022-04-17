class Board
  board_status = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9}

  def display_board(board_status)
    puts "  #{board_status[:a]} | b | c
    --+---+--
     d | e | f
    --+---+--
     g | h | i"
  end
end

game = Board.new
game.display_board(board_status)

class Player
  def initialize
    puts "Hello! What is your name?"
    @name = gets
    puts "What symbol would you like to use?"
    @symbol = gets
  end

  def board_fill
    # stores all the spaces that this player has taken up
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

# so the second to last player's filled spaces get pulled in
# then the last player
# then a new instance of the board would be generated

puts "PLAYER ONE:"
player_one = Player.new
puts "PLAYER TWO:"
player_two = Player.new
player_one.display_board