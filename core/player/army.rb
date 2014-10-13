=begin
/**
* @author zhzhussupovkz@gmail.com
* @copyright (c) 2014 Zhussupov Zhassulan zhzhussupovkz@gmail.com
*/
=end
#Army - army of bees
class Army

  def initialize window, general
    @window, @general = window, general
    @soldiers = []
  end

  attr_reader :window, :general

  # add soldiers to army
  def add_soldier bee
    @soldiers << bee
  end

  # draw
  def draw
    @general.draw
    @soldiers.each do |e| e.draw end
  end

end