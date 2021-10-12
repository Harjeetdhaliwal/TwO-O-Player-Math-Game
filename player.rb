class Player

  attr_accessor :name, :lives

  def initialize name
    @lives = 3
    @name = name
  end

end

# player1 = Player.new("Player 1")
# player2 = Player.new("Player 2")