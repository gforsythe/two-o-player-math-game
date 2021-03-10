# creating class player - a template for the players in the game
class Player
  # the player has the following attributes name, lives
  attr_accessor :name, :lives

  # here we give the attributes to the player through name and each player is given 3 lives
  def initialize (name)
    @name = name
    @lives = 3
  end

    # each time a play gets a wrong question they lose their life
  def wrong_answer 
    @lives -= 1
  end

  def alive?
    @lives != 0
  end

    # player dies when no lives are left
  def dead?
    @lives = 0
  end
  
end