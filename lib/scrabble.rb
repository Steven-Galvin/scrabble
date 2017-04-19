require('descriptive_statistics')

class String
  define_method(:scrabble) do
    letter_values = {
      1 => ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"],
      2 => ["d", "g"],
      3 => ["b", "c", "m", "p"],
      4 => ["f", "h", "v", "w", "y"],
      5 => ["k"],
      8 => ["j", "x"],
      10 => ["q", "z"]
    }

    total_score = 0

    downcase!

    letters = split("")

    letters.each() do |letter|

      if letter_values[1].include?(letter)
        total_score += 1

      elsif letter_values[2].include?(letter)
        total_score += 2

      elsif letter_values[3].include?(letter)
        total_score += 3

      elsif letter_values[4].include?(letter)
        total_score += 4

      elsif letter_values[5].include?(letter)
        total_score += 5

      elsif letter_values[8].include?(letter)
        total_score += 8

      elsif letter_values[10].include?(letter)
        total_score += 10

      else
        total_score += 0
      end
    end
    total_score
  end
end
