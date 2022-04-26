class House

  def line(number)
    "This is #{phrase(number)}the house that Jack built.\n"
  end

  def phrase(number)
    result = ""
    case number
    when 12
      result = "the horse and the hound and the horn that belonged to " + phrase(number-1)
    when 11
      result = "the farmer sowing his corn that kept " + phrase(number-1)
    when 10
      result = "the rooster that crowed in the morn that woke " + phrase(number-1)
    when 9
      result = "the priest all shaven and shorn that married " + phrase(number-1)
    when 8
      result = "the man all tattered and torn that kissed " + phrase(number-1)
    when 7
      result = "the maiden all forlorn that milked " + phrase(number-1)
    when 6
      result = "the cow with the crumpled horn that tossed " + phrase(number-1)
    when 5
      result = "the dog that worried " + phrase(number-1)
    when 4
      result = "the cat that killed " + phrase(number-1)
    when 3
      result = "the rat that ate " + phrase(number-1)
    when 2
      result = "the malt that lay in " + phrase(number-1)
    end
    return result
  end

  def recite 
    1.upto(12).map { |number| line(number) }.join("\n")
  end
end
