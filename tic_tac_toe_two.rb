class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def win_status?
    # check if the player meets winning conditions
    # if "win", puts "you won!"
    # if not, continue
  end
end

class Board
  def initialize(a, b, c, d, e, f, g, h, i)
    # each letter variable is passed in from the players, maybe?
  end
  
  def display
    # board is displayed with each of the current variables?
  end
end

player_one = Player.new("Thane", "x")
player_two = Player.new("Vax", "o")