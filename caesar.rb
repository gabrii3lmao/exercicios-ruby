def caesar_cipher(texto, deslocamento)
  alfabeto = ("a".."z").to_a
  texto.chars.map do |char|
    if alfabeto.include?(char.downcase)
      index_original = alfabeto.index(char.downcase)
      index_novo = (index_original + deslocamento) % 26 
      letra_nova = alfabeto[index_novo]
      char == char.upcase ? letra_nova.upcase : letra_nova
    else
      char 
    end
  end.join
end

puts caesar_cypher("Ave to Caesar!", 5)