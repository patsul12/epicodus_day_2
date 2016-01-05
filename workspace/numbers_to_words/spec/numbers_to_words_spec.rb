require('rspec')
require('numbers_to_words')

describe('numbers_to_words') do
  it ('converts a single digit number into a word') do
    expect(numbers_to_words(120)).to(eq('one'))
  end
end
