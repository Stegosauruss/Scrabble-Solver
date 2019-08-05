class Scrabble
  def initialize(word)
    @word = word
    @scores = {
      a: 1,
      e: 1,
      i: 1,
      o: 1,
      u: 1,
      d: 2,
      g: 2,
      f: 4
    }
  end

  def score
    score = 0
    @word.each_char do |letter|
      score += @scores[letter.downcase.to_sym]
    end
    score
  end

end