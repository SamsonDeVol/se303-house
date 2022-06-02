class House

  attr_accessor :lyric_template

  def initialize(lyric_template = Lyrics)
    @lyric_template = lyric_template
  end

  def line(number)
    "#{lyric(number).start} #{lyric(number).phrase}the house that Jack built.\n"
  end

  def recite 
    1.upto(12).map { |number| line(number) }.join("\n")
  end

  def lyric(number)
    lyric_template.new(number)
  end
end


class Lyrics
  
  SUBJECTS = [
    "the malt ", "the rat ", "the cat ", "the dog ",
    "the cow ", "the maiden ", "the man all tattered and torn ", "the priest ",
    "the rooster ", "the farmer ", "the horse and the hound and the horn "
  ]
  
  VERBS = [
    "that lay in ", "that ate ", "that killed ",
    "that worried ", "with the crumpled horn that tossed ",
    "all forlorn that milked ", "that kissed ",
    "all shaven and shorn that married ", "that crowed in the morn that woke ",
    "sowing his corn that kept ", "that belonged to "
  ]

  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def phrases 
    phrases = [""]
    (0..SUBJECTS.length()-1).each do |i|
      phrases.append(SUBJECTS[i] + VERBS[i])
    end
    return phrases
    
  end

  def phrase
    phrases[0..number-1].reverse.join
  end 

  def start
    "This is"
  end
end

class RandomLyrics < Lyrics

  def phrase
    phrases.shuffle[1..number-1].join
  end
end

class PirateLyrics < Lyrics

  def start
    "Thar be"
  end
end

class RandomPirateLyrics < Lyrics

  def phrase
    phrases.shuffle[1..number-1].join
  end

  def start
    "Thar be"
  end 
end

puts Lyrics.new(1).phrases