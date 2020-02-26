class Player
  def initialize (name)
    @name = name
    @score = 0
  end
  def get_name
    @name
  end
  def get_score
    @score
  end  
  def increase_score
    @score += 1
  end
end