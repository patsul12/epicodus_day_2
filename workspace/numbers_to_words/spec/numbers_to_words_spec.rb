require('rspec')
require('numbers_to_words')
require('pry')

describe('Fixnum#numbers_to_words') do

  it ('converts a single digit number into a word') do
    expect((1).numbers_to_words).to(eq('one'))
  end

  it ('converts a two digit number into a word') do
    expect((10).numbers_to_words).to(eq('ten'))
  end

  it ('converts a three digit number into a word') do
    expect((120).numbers_to_words).to(eq('one hundred twenty'))
  end

  it ('converts a four digit number into a word') do
    expect((9999).numbers_to_words).to(eq('nine thousand nine hundred ninety nine'))
  end

  it ('converts a five digit number into a word') do
    expect((12000).numbers_to_words).to(eq('twelve thousand'))
  end

  it ('converts a six digit number into a word') do
    expect((120000).numbers_to_words).to(eq('one hundred twenty thousand'))
  end

  it ('converts a seven digit number into a word') do
    expect((1200000).numbers_to_words).to(eq('one million two hundred thousand'))
    expect((9999999).numbers_to_words).to(eq('nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a eight digit number into a word') do
    expect((12000000).numbers_to_words).to(eq('twelve million'))
    expect((99999999).numbers_to_words).to(eq('ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a nine digit number into a word') do
    expect((120000000).numbers_to_words).to(eq('one hundred twenty million'))
    expect((999999999).numbers_to_words).to(eq('nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a ten digit number into a word') do
    expect((1200000000).numbers_to_words).to(eq('one billion two hundred million'))
    expect((9999999999).numbers_to_words).to(eq('nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a eleven digit number into a word') do
    expect((12000000000).numbers_to_words).to(eq('twelve billion'))
  end

  it ('converts a twelve digit number into a word') do
    expect((120000000000).numbers_to_words).to(eq('one hundred twenty billion'))
    expect((999999999999).numbers_to_words).to(eq('nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a thirteen digit number into a word') do
    expect((1200000000001).numbers_to_words).to(eq('one trillion two hundred billion one'))
    expect((9_999_999_999_999).numbers_to_words).to(eq('nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end
end
