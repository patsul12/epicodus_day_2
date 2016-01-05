def numbers_to_words(num)
  output = ""
  if num == 0
    return "zero"
  end
  positions = {
    0 => {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"},
    1 => {0 => "", 1 => {1 => "eleven"}, 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"},
    2 => "hundred"
  }
  num = num.to_s.split('')
  len = num.length - 1
  range = len..0
  num.each_with_index { |value,key| num[key] = value.to_i }
  num.reverse!
  (range.first).downto(range.last).each do |position|
    if position == 0
      return positions[0].fetch(num[-1])
    elsif position == 1
      temp = ""
      temp += " " + positions[position].fetch(num[position]) + " "
      temp += positions[0].fetch(num[0])
      output += temp
      return output.strip
    end
    temp = ""
    temp += " " + positions[0].fetch(num[-1]) + " "
    temp += positions[position]
    output += temp
  end
end
