class House

  attr_accessor :lyric_template

  def initialize(lyric_template: Lyrics)
    @lyric_template = lyric_template
  end

  def line(number)
    "#{lyric(number).theme} #{lyric(number).phrase}the house that Jack built.\n"
  end

  def recite 
    1.upto(12).map { |number| line(number) }.join("\n")
  end

  def lyric(number)
    lyric_template.new(number)
  end
end

class Lyrics

  PHRASES = [
    "",
    "the malt that lay in ", "the rat that ate ", 
    "the cat that killed ", "the dog that worried ", 
    "the cow with the crumpled horn that tossed ", 
    "the maiden all forlorn that milked ", "the man all tattered and torn that kissed ", 
    "the priest all shaven and shorn that married ", "the rooster that crowed in the morn that woke ", 
    "the farmer sowing his corn that kept ", "the horse and the hound and the horn that belonged to "
  ] 

  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def phrase
    PHRASES[0..number-1].reverse.join
  end 

  def theme
    "This is"
  end
end
