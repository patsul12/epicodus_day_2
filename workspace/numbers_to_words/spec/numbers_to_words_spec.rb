require('rspec')
require('numbers_to_words')
require('pry')

describe('Fixnum#numbers_to_words') do
  it ('converts a single digit number into a word') do
    expect((1).numbers_to_words).to(eq('one'))
  end

  it ('converts a two digit number into a word') do
    expect((12).numbers_to_words).to(eq('twelve'))
  end

  it ('converts a three digit number into a word') do
    expect((120).numbers_to_words).to(eq('one hundred twenty'))
  end

  it ('converts a four digit number into a word') do
    expect((1200).numbers_to_words).to(eq('one thousand two hundred'))
    expect((9999).numbers_to_words).to(eq('nine thousand nine hundred ninety nine'))
  end

  it ('converts a five digit number into a word') do
    expect((12000).numbers_to_words).to(eq('twelve thousand'))
  end
end
