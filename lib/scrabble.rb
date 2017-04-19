class String
  define_method(:scrabble) do
    score_1_letters = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    total_score_array = []
    if score_1_letters.include?(self)
      total_score_array.push(1)
    end
    total_score_array.join().to_i()
  end
end
