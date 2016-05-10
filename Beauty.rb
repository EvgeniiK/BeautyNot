class Beauty

  def self.beautiString(somechars)
    chars = {}

    chars = somechars.downcase.chars.inject(Hash.new{0}){|chars,i|
      chars[i]+=1
      puts chars
      chars
      }
    sum = 0
    chars = chars.sort_by { |_key, value| -value }
    chars.each_with_index do |char, index|
      sum += char.last * (26 - index)
    end
    sum
  end
end


puts Beauty.beautiString('ABbCcc')