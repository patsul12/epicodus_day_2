class String
  def scrabble_score
    score = 0
    word = self.downcase.split('')
    points = {1 => ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'],
              2 => ['d','g'],
              3 => ['b', 'c', 'm', 'p'],
              4 => ['f', 'h', 'v', 'w', 'y'],
              5 => ['k'],
              8 => ['j', 'x'],
              10 => ['q', 'z']}

    for char in word
      points.each do |key, array|
        if array.include? char
          score += key
        end
      end
    end
    return score
  end
end
