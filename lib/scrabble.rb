require('descriptive_statistics')

class String
  define_method(:scrabble) do
    score_1_letters = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    score_2_letters = ["d", "g"]
    total_score_array = []

    letters = self.split("")

    letters.each() do |letter|

      if score_1_letters.include?(letter)
        total_score_array.push(1)
      elsif score_2_letters.include?(letter)
        total_score_array.push(2)
      end
    end
    update_total = total_score_array.sum()

    update_total
  end
end
