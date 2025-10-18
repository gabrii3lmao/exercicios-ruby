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

#print(is_palindromo("ararar"));
#ordernar_personalizado
def ordenar_personalizado(arr)
	sorted_arr = arr.sort_by{|str| [str.length, str]}
	sorted_arr.uniq
end

#print(ordenar_personalizado(["abc", "ab", "abcd", "efg", "a"]))

#palindromo avançado

def palindromo_avançado(frase)
	frase.split(' ').join.downcase == frase.split(' ').join.downcase.reverse
end

#puts(palindromo_avançado("A base do teto desaba"))

#FIZZBUZZ
puts (1..100).map{ |i| i % 3 == 0 && i % 5 == 0 ? "FizzBuzz" : i % 3 == 0 ? "Fizz" : i % 5 == 0 ? "Buzz" : i.to_s}.join("\n")
