class House

  PHRASES = [
    "the malt that lay in ", "the rat that ate ", 
    "the cat that killed ", "the dog that worried ", 
    "the cow with the crumpled horn that tossed ", 
    "the maiden all forlorn that milked ", "the man all tattered and torn that kissed ", 
    "the priest all shaven and shorn that married ", "the rooster that crowed in the morn that woke ", 
    "the farmer sowing his corn that kept ", "the horse and the hound and the horn that belonged to "
  ] 

  def line(number)
    "This is #{phrase(number)}the house that Jack built.\n"
  end

  def phrase(number)
    result = ""
    case number
    when 12
      result = PHRASES[10] + phrase(number-1)
    when 11
      result = PHRASES[9] + phrase(number-1)
    when 10
      result = PHRASES[8] + phrase(number-1)
    when 9
      result = PHRASES[7] + phrase(number-1)
    when 8
      result = PHRASES[6] + phrase(number-1)
    when 7
      result = PHRASES[5] + phrase(number-1)
    when 6
      result = PHRASES[4] + phrase(number-1)
    when 5
      result = PHRASES[3] + phrase(number-1)
    when 4
      result = PHRASES[2] + phrase(number-1)
    when 3
      result = PHRASES[1] + phrase(number-1)
    when 2
      result = PHRASES[0]
    end
    return result
  end

  def recite 
    1.upto(12).map { |number| line(number) }.join("\n")
  end
end
