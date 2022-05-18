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
    for i in number.downto(2) 
      result += PHRASES[i-2]
    end
    result
  end

  def recite 
    1.upto(12).map { |number| line(number) }.join("\n")
  end
end
