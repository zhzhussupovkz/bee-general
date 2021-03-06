=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#Level - main game logic class
class Level

  def initialize window
    @window = window
    @bg = Gosu::Image.new window, 'images/level/background.png', true
    @panel = Gosu::Image.new window, 'images/level/panel.png', true
    @bee_general = BeeGeneral.new window
    @ui = Gosu::Font.new window, 'Monospace', 20
    @gold, @honey = 100, 100
  end

  attr_reader :window
  attr_accessor :gold, :honey

  # draw
  def draw
    @bg.draw 0, 0, 0
    @panel.draw 0, 540, 1
    @bee_general.draw
    year = (Time.at(Time.now.to_i)).strftime("%Y")
    @ui.draw("Copyright (c) #{year} by zhzhussupovkz", 360, 675, 4)
  end

  # update
  def update
    @bee_general.movement
  end

end