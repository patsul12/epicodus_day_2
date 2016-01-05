class Fixnum

  positions = {
    0 => {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"},
    1 => {0 => "", 1 => {1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "seventeen", 8 => "eightteen", 9 => "nineteen"},
    2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"},
    2 => "hundred",
    3 => "thousand",
    4 => "thousand"
  }

  len = 0
  position = 0

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
    puts num_array
    num_array.each_with_index do |value, index|
      if position > 2
        append = positions[position]
      else
        append = ""
      end
      group = groups_of_three(num_array[index])
      output += group + append
    end
    return output
  end

  define_method(:groups_of_three) do |group|
    pos = group.length - 1
    output = ""
    loop do
      if pos == 0
        return positions[0].fetch(num[-1])
      elsif pos == 1
        temp = ""
        if group[pos] == 1
          temp += positions[1][1].fetch(group[pos - 1])
          output += temp
          return output
        end
        temp += " " + positions[pos].fetch(group[pos]) + " "
        temp += positions[0].fetch(group[0])
        temp += output
        return output
      end

      temp = ""
      temp += " " + positions[0].fetch(num[pos]) + " "
      temp += positions[pos]
      output += temp
      position -= group.length
      pos -= 1
      break if pos < 1
    end
    return output
  end
end
