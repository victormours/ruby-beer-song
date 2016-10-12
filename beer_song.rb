class BeerSong

  def lyrics
    verses(99, 0)
  end

  def verses(from, to)
    (to..from).to_a.reverse.map do |n|
      verse(n)
    end.join("\n")
  end

  def verse(n)
    return last_verse if n == 0
    "#{number_of_bottles(n)} of beer on the wall, #{number_of_bottles(n)} of beer.
Take #{one(n)} down and pass it around, #{number_of_bottles(n-1)} of beer on the wall.\n"
  end

  private

  def last_verse
    "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def number_of_bottles(n)
    "#{number(n)} #{bottle(n)}"
  end

  def one(n)
    n == 1 ? "it" : "one"
  end

  def number(n)
    n == 0 ? "no more" : n
  end

  def bottle(n)
    n == 1 ? "bottle" : "bottles"
  end

end

class BookKeeping
  VERSION = 2
end
