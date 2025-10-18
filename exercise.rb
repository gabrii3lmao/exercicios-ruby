#SOMA DOS MULTIPLOS
soma = 0
(1..100).each do |i|
    if(i%3 == 0 || i%5 == 0)
        soma += i
    end
end

#numero de vogais

def todas_as_vogais(texto)
vogais_texto = []
vogais = "aeiou"
    texto.each_char do |letra|
        vogais_texto << letra if vogais.include?(letra)
    end

return vogais_texto.uniq
end

#palindromo ou nao
def is_palindromo(palavra)
    if palavra == palavra.reverse
        return true
    end
return false
end

print(is_palindromo("ararar"));