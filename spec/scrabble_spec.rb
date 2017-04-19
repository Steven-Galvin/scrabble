require('rspec')
require('scrabble')

describe('String#scrabble') do

  it('returns the corresponding integer for a letter') do
    expect("a".scrabble()).to(eq(1))
  end

  it('returns the corresponding integer for letters "a", "e", "i", "o", "u", "l", "n", "r", "s", "t"') do
    expect("l".scrabble()).to(eq(1))
  end

  it('returns the corresponding integer for letters "d" and "g"') do
    expect("g".scrabble()).to(eq(2))
  end

  # it('distinquishes between score 1 letters and score 2 letters') do
  #   expect("da")
  # end


end
