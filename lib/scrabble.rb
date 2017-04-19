require('descriptive_statistics')

class String
  define_method(:scrabble) do
    score_1_letters = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    score_2_letters = ["d", "g"]
    score_3_letters = ["b", "c", "m", "p"]
    score_4_letters = ["f", "h", "v", "w", "y"]
    score_5_letters = ["k"]
    score_8_letters = ["j", "x"]
    score_10_letters = ["q", "z"]
    total_score_array = []

    self.downcase!

    letters = self.split("")

    letters.each() do |letter|

      if score_1_letters.include?(letter)
        total_score_array.push(1)
      elsif score_2_letters.include?(letter)
        total_score_array.push(2)
      elsif score_3_letters.include?(letter)
        total_score_array.push(3)
      elsif score_4_letters.include?(letter)
        total_score_array.push(4)
      elsif score_5_letters.include?(letter)
        total_score_array.push(5)
      elsif score_8_letters.include?(letter)
        total_score_array.push(8)
      elsif score_10_letters.include?(letter)
        total_score_array.push(10)
      else
        total_score_array.push(0)
      end
    end
    update_total = total_score_array.sum()

    update_total
  end
end
