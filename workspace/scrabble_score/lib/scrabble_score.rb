class String
  def scrabble_score
    score = 0
    word = self.split
    points = {1 => ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'],
              2 => ['d','g']}

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
