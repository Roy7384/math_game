class Player

  def initialize(name)
    @name = name
    @lives = 3
  end

  def update_live
    @lives -= 1
    @lives == 0
  end

end
