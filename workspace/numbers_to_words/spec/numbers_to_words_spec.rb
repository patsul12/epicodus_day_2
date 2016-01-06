require('rspec')
require('numbers_to_words')
require('pry')

describe('Bignum#numbers_to_words') do

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

  it ('converts a fourteen digit number into a word') do
    expect((99_999_999_999_999).numbers_to_words).to(eq('ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999).numbers_to_words).to(eq('nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999).numbers_to_words).to(eq('ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999).numbers_to_words).to(eq('nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine unvigintillion nine hundred ninety nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine unvigintillion nine hundred ninety nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine unvigintillion nine hundred ninety nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine dovigintillion nine hundred ninety nine unvigintillion nine hundred ninety nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine dovigintillion nine hundred ninety nine unvigintillion nine hundred ninety nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine dovigintillion nine hundred ninety nine unvigintillion nine hundred ninety nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine trevigintillion nine hundred ninety nine dovigintillion nine hundred ninety nine unvigintillion nine hundred ninety nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine trevigintillion nine hundred ninety nine dovigintillion nine hundred ninety nine unvigintillion nine hundred ninety nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine trevigintillion nine hundred ninety nine dovigintillion nine hundred ninety nine unvigintillion nine hundred ninety nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((9_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine quattuorvigintillion nine hundred ninety nine trevigintillion nine hundred ninety nine dovigintillion nine hundred ninety nine unvigintillion nine hundred ninety nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((99_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('ninety nine quattuorvigintillion nine hundred ninety nine trevigintillion nine hundred ninety nine dovigintillion nine hundred ninety nine unvigintillion nine hundred ninety nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end

  it ('converts a fifteen digit number into a word') do
    expect((999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999).numbers_to_words).to(eq('nine hundred ninety nine quattuorvigintillion nine hundred ninety nine trevigintillion nine hundred ninety nine dovigintillion nine hundred ninety nine unvigintillion nine hundred ninety nine vigintillion nine hundred ninety nine novemdecillion nine hundred ninety nine octodecillion nine hundred ninety nine septendecillion nine hundred ninety nine sexdecillion nine hundred ninety nine quindecillion nine hundred ninety nine quattuordecillion nine hundred ninety nine tredecillion nine hundred ninety nine duodecillion nine hundred ninety nine undecillion nine hundred ninety nine decillion nine hundred ninety nine nonillion nine hundred ninety nine octillion nine hundred ninety nine septillion nine hundred ninety nine sextillion nine hundred ninety nine quintillion nine hundred ninety nine quadrillion nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine'))
  end
end
