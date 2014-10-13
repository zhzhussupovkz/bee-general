=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#BeeGeneral - main game player
class BeeGeneral

  def initialize window
    @window, @x, @y = window, 900, 275
    begin
      @image = Gosu::Image.new window, 'images/player/bee_general.png', true
      @attack, @power, @stamina = 50, 5, 100
    rescue Exception => e
      puts "#{e.class}: #{e.message}"
    end
  end

  attr_reader :x, :y, :window

  # draw
  def draw
    @image.draw x, y, 3
  end

  # bee general movement
  def movement
    move_left if window.button_down? Gosu::KbLeft
    move_right if window.button_down? Gosu::KbRight
    move_up if window.button_down? Gosu::KbUp
    move_down if window.button_down? Gosu::KbDown
  end

  def move_left
    @x -= 7.0 if @x >= 16
  end

  def move_right
    @x += 7.0 if @x <= 900
  end

  def move_up
    @y -= 7.0 if @y >= 72
  end

  def move_down
    @y += 7.0 if @y <= 480
  end

end