require('rspec')
require('scrabble')

describe('String#scrabble') do

  it('returns the corresponding integer for a letter') do
    expect("a".scrabble()).to(eq(1))
  end

  it('returns the corresponding integer for letters "a", "e", "i", "o", "u", "l", "n", "r", "s", "t"') do
    expect("l".scrabble()).to(eq(1))
  end


end
