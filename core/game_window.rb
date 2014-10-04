=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#GameWindow - main window class
class GameWindow < Gosu::Window

  include Singleton

  def initialize
    super 960, 720, false
    self.caption = 'Bee General'
    begin
      @level = Level.new self
      @cursor = Gosu::Image.new self, "images/cursor.png"
    rescue Exception => e
      puts "#{e.class}: #{e.message}"
    end
  end

  #draw
  def draw
    @level.draw
    @cursor.draw mouse_x, mouse_y, 5
  end

  #update
  def update
    @level.update
  end

  #button down event
  def button_down(key)
    case key
    when Gosu::KbEscape
      close
    end
  end
end
