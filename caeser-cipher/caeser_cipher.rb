def caeser_cipher(string, shift)
  string.split("").map do |char|
    ord = char.ord.to_i
    if ord.between?(65, 90)
      newOrd = (ord + shift) > 90 ? ord + shift - 91 + 65 : ord + shift
      newOrd.chr
    elsif ord.between?(97, 122)
      newOrd = (ord + shift) > 122 ? ord + shift - 123 + 97 : ord + shift
      newOrd.chr
    else
      char
    end
  end.join
end

puts caeser_cipher("What a string!", 5)