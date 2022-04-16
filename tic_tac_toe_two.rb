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

class Board
  def initialize(a, b, c, d, e, f, g, h, i)
    # each letter variable is passed in from the players, maybe?
  end
  
  def display
    # board is displayed with each of the current variables?
  end
end

player_one = Player.new
player_two = Player.new