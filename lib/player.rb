class Player
  def initialize(name)
    @name = name
    @score = 0
  end

  def read_name
    @name
  end

  def read_score
    @score
  end

  def increase_score
    @score += 1
  end
end
