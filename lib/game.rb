class Game 
  attr_reader :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @current_turn = opponent(current_turn)
  end

  def opponent(opponent_of)
    (@players.select { |player| player != opponent_of }).first
  end

  def self.instance
    @current_instance 
  end

  def self.create(player_1, player_2)
    @current_instance = Game.new(player_1, player_2)
  end
end
