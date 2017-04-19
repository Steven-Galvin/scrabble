class String
  define_method(:scrabble) do
    total_array = []
    if self.==("a")
      total_array.push(1)
    end
    total_array.join().to_i()
  end
end
