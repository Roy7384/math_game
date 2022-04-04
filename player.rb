class Player

  def initialize(name)
    @name = name
    @lives = 3
  end

  def update_live(num)
    @lives += num
    @lives == 0
  end

end
