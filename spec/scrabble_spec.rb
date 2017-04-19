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

  it('returns sum of multiple letters') do
    expect("da".scrabble()).to(eq(3))
  end

  it('returns sum of all letter/value groups') do
    expect("quixotry".scrabble()).to(eq(27))
  end

  it('recognizes letters regardless of case') do
    expect("QueTzAls".scrabble()).to(eq(26))
  end

  it('recognizes non letters and adds no points') do
    expect("QuIz2!".scrabble()).to(eq(22))
  end


end
