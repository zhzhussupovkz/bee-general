=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#Bee - main game player
class Bee

  def initialize window
    @window, @x, @y = window, 900, 275
    begin
      @image = Gosu::Image.new window, 'images/player/bee.png', true
      @attack, @power, @stamina = 10, 1, 100
    rescue Exception => e
      puts "#{e.class}: #{e.message}"
    end
  end

  attr_reader :x, :y

  # draw
  def draw
    @image.draw x, y, 3
  end

  #get power
  def get_power
    @attack*@power
  end

end