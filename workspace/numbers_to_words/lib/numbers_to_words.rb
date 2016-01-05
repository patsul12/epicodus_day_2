class Fixnum

  positions = {
    0 => {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"},
    1 => {0 => "", 1 => {1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "seventeen", 8 => "eightteen", 9 => "nineteen"},
      2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"},
    2 => "hundred",
    3 => "thousand",
    4 => "thousand",
    5 => "thousand",
    6 => "million",
  }

  len = 0
  position = 0
  num_array = 0

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
      group = groups_of_three(num_array[index])
      if position > 1 && num_array[index][2] != 0
        append = positions[position]
      else
        append = ""
      end

      if append != ""
        output += group + " " + append + " "
      else
        output += group + append
      end
    end
    return output.split(" ").join(" ").strip
  end

  define_method(:groups_of_three) do |group|
    pos = group.length - 1
    position -= pos
    output = ""
    loop do
      if pos == 0
        return positions[0].fetch(group[-1])
      elsif pos == 1
        temp = ""
        if group[pos] == 1
          temp += positions[1][1].fetch(group[pos - 1])
          output += temp
          return output
        end
        temp += " " + positions[pos].fetch(group[pos]) + " "
        temp += positions[0].fetch(group[0])
        output += temp
        return output
      elsif pos == 2
        if group == [0,0,0]
          output += ""
        else
          output += positions[0].fetch(group[pos]) + " hundred"
        end
      end
      pos -= 1
      break if pos < 0
    end
    return output
  end
end
