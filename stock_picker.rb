
def stock_picker(stock)
lucro_maximo = 0
preco_minimo = Float::INFINITY

  stock.each do |preco_atual|
    if preco_atual > lucro_maximo - preco_minimo
       lucro_maximo = preco_atual
        if preco_atual < preco_minimo
            preco_minimo = preco_atual
        end
    end
   end
   [stock.index(preco_minimo), stock.index(lucro_maximo)]
end
print stock_picker([17,3,6,9,15,8,6,1,10])
#[1,4] for a profit of $15 - $3 == $12


#1 rodada: lucro_maximo = 17; preco_minimo = 0
#2 rodada: 