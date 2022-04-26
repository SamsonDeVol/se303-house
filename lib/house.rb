class House

  def line(number)
    if number == 1
      "This is the house that Jack built.\n"
    elsif number == 2
      "This is the malt that lay in the house that Jack built.\n"
    elsif number == 3
      "This is the rat that ate the malt that lay in the house that Jack built.\n"
    elsif number == 4
      "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif number == 5
      "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    elsif number == 6
      "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    else
      "This is #{phrase(number)}the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    end
  end

  def phrase(number)
    result = ""
    if number == 12
      result = "the horse and the hound and the horn that belonged to " + phrase(number-1)
    elsif number == 11
      result = "the farmer sowing his corn that kept " + phrase(number-1)
    elsif number == 10
      result = "the rooster that crowed in the morn that woke " + phrase(number-1)
    elsif number == 9
      result = "the priest all shaven and shorn that married " + phrase(number-1)
    elsif number == 8
      result = "the man all tattered and torn that kissed " + phrase(number-1)
    elsif number == 7
      result = "the maiden all forlorn that milked " + phrase(number-1)
    end
    return result
  end

  def recite 
    1.upto(12).map { |number| line(number) }.join("\n")
  end
end
