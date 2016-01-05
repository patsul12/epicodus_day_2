require('rspec')
require('scrabble_score')

describe('scrabble_score') do
  it("returns a scrabble score for a letter") do
    expect("a".scrabble_score()).to(eq(1))
  end

  it("returns the sum of a word's points") do
    expect("aeioulnrst".scrabble_score()).to(eq(10))
  end

  it("returns the sum of a word's points") do
    expect("dg".scrabble_score()).to(eq(4))
  end

  it("returns the sum of a word's points") do
    expect("bcmp".scrabble_score()).to(eq(12))
  end

  it("returns the sum of a word's points") do
    expect("fhvwy".scrabble_score()).to(eq(20))
  end

  it("returns the sum of a word's points") do
    expect("k".scrabble_score()).to(eq(5))
  end

  it("returns the sum of a word's points") do
    expect("jx".scrabble_score()).to(eq(16))
  end

  it("returns the sum of a word's points") do
    expect("qz".scrabble_score()).to(eq(20))
  end

  it("returns the sum of a word's points") do
    expect("AQJ".scrabble_score()).to(eq(19))
  end

  it("returns the sum of a word's points") do
    expect("scrabble".scrabble_score()).to(eq(14))
  end
end
