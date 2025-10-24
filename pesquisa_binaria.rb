
def pesquisa_binaria(lista, item)
  inicio = 0
  fim = lista.length - 1
  
  while inicio <= fim
    meio = (inicio + fim)/2
    chute = lista[meio]
    if chute == item
      return meio
    elsif chute > item
     fim = meio - 1
    else
      inicio = meio + 1
    end
  end
  return nil
end

minha_lista = [1, 3, 5, 7, 9]
puts(pesquisa_binaria(minha_lista, 7))
