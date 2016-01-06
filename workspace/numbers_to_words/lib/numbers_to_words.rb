class Fixnum

  positions = {
    0 => {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"},
    1 => {
      0 => "",
      1 => {0 => "ten", 1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "seventeen", 8 => "eightteen", 9 => "nineteen"},
      2 => "twenty",
      3 => "thirty", 
      4 => "forty", 
      5 => "fifty", 
      6 => "sixty", 
      7 => "seventy", 
      8 => "eighty", 
      9 => "ninety"
    },
    2 => "",
    3 => "thousand",
    4 => "thousand",
    5 => "thousand",
    6 => "million",
    7 => "million",
    8 => "million",
    9 => "billion",
    10 => "billion",
    11 => "billion",
    12 => "trillion",
    13 => "trillion",
    14 => "trillion",
    15 => "quadrillion",
    16 => "quadrillion",
    17 => "quadrillion",
  }

  len = 0
  position = 0
  num_array = []

  define_method(:numbers_to_words) do
    output = ""
    if self == 0
      return "zero"
    end
    num = self.to_s.split('')
    len = num.length - 1
    position = len
    num.each_with_index { |value,key| num[key] = value.to_i }
    num.reverse!
    num_array = num.each_slice(3).to_a
    num_array.reverse!

    num_array.each_with_index do |value, index|
      append = ""
      group = groups_of_three(num_array[index])
      if position > 1 && num_array[index][2] != 0
        append = positions[position]
      else
        append = ""
      end

      if append != ""
        output += group + " " + append + " "
      else
        output += group + append + " "
      end
      position -= 3
    end
    return output.split(" ").join(" ").strip
  end

  define_method(:groups_of_three) do |group|
    pos = group.length - 1
    output = ""
    loop do
      if pos == 0
        return positions[0].fetch(group[-1])
      elsif pos == 1
        temp = ""
        if group[pos] == 1
          temp += positions[1][1].fetch(group[pos - 1])
        else
          temp += " " + positions[1][group[pos]] + " "
          temp += positions[0].fetch(group[0])
        end
        output += temp
        return output
      elsif pos == 2
        if group == [0,0,0]
          output += ""
        elsif group[2] > 0
          output += positions[0].fetch(group[pos]) + " hundred"
        else
          output += positions[0].fetch(group[pos])
        end
      end
      pos -= 1
      break if pos < 0
    end
    return output
  end
end

class Bignum

  positions = {
    0 => {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"},
    1 => {
      0 => "",
      1 => {0 => "ten", 1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "seventeen", 8 => "eightteen", 9 => "nineteen"},
      2 => "twenty",
      3 => "thirty", 
      4 => "forty", 
      5 => "fifty", 
      6 => "sixty", 
      7 => "seventy", 
      8 => "eighty", 
      9 => "ninety"
    },
    2 => "",
    3 => "thousand",
    4 => "thousand",
    5 => "thousand",
    6 => "million",
    7 => "million",
    8 => "million",
    9 => "billion",
    10 => "billion",
    11 => "billion",
    12 => "trillion",
    13 => "trillion",
    14 => "trillion",
    15 => "quadrillion", 16 => "quadrillion", 17 => "quadrillion",
    18 => "quintillion", 19 => "quintillion", 20 => "quintillion",
    21 => "sextillion", 22 => "sextillion", 23 => "sextillion",
    24 => "septillion", 25 => "septillion", 26 => "septillion",
    27 => "octillion", 28 => "octillion", 29 => "octillion",
    30 => "nonillion", 31 => "nonillion", 32 => "nonillion",
    33 => "decillion", 34 => "decillion", 35 => "decillion",
    36 => "undecillion", 37 => "undecillion", 38 => "undecillion",
    39 => "duodecillion", 40 => "duodecillion", 41 => "duodecillion",
    42 => "tredecillion", 43 => "tredecillion", 44 => "tredecillion",
    45 => "quattuordecillion", 46 => "quattuordecillion", 47 => "quattuordecillion",
    48 => "quindecillion", 49 => "quindecillion", 50 => "quindecillion",
    51 => "sexdecillion", 52 => "sexdecillion", 53 => "sexdecillion",
    54 => "septendecillion", 55 => "septendecillion", 56 => "septendecillion",
    57 => "octodecillion", 58 => "octodecillion", 59 => "octodecillion",
    60 => "novemdecillion", 61 => "novemdecillion", 62 => "novemdecillion",
    63 => "vigintillion", 64 => "vigintillion", 65 => "vigintillion",
    66 => "unvigintillion", 67 => "unvigintillion", 68 => "unvigintillion",
    69 => "dovigintillion", 70 => "dovigintillion", 71 => "dovigintillion",
    72 => "trevigintillion", 73 => "trevigintillion", 74 => "trevigintillion",
    75 => "quattuorvigintillion", 76 => "quattuorvigintillion", 77 => "quattuorvigintillion",

=begin
  todo:
   quattuorvigintillion
   quinvigintillion
   sexvigintillion
   septenvigintillion
   octovigintillion
   novemvigintillion
   trigintillion
   untrigintillion
   dotrigintillion
   tretrigintillion
   quattuortrigintillion
   quintrigintillion
   sextrigintillion
   septentrigintillion
   octotrigintillion
   novemtrigintillion
=end

  }

  len = 0
  position = 0
  num_array = []

  define_method(:numbers_to_words) do
    output = ""
    if self == 0
      return "zero"
    end
    num = self.to_s.split('')
    len = num.length - 1
    position = len
    num.each_with_index { |value,key| num[key] = value.to_i }
    num.reverse!
    num_array = num.each_slice(3).to_a
    num_array.reverse!

    num_array.each_with_index do |value, index|
      append = ""
      group = groups_of_three(num_array[index])
      if position > 1 && num_array[index][2] != 0
        append = positions[position]
      else
        append = ""
      end

      if append != ""
        output += group + " " + append + " "
      else
        output += group + append + " "
      end
      position -= 3
    end
    return output.split(" ").join(" ").strip
  end

  define_method(:groups_of_three) do |group|
    pos = group.length - 1
    output = ""
    loop do
      if pos == 0
        return positions[0].fetch(group[-1])
      elsif pos == 1
        temp = ""
        if group[pos] == 1
          temp += positions[1][1].fetch(group[pos - 1])
        else
          temp += " " + positions[1][group[pos]] + " "
          temp += positions[0].fetch(group[0])
        end
        output += temp
        return output
      elsif pos == 2
        if group == [0,0,0]
          output += ""
        elsif group[2] > 0
          output += positions[0].fetch(group[pos]) + " hundred"
        else
          output += positions[0].fetch(group[pos])
        end
      end
      pos -= 1
      break if pos < 0
    end
    return output
  end
end
