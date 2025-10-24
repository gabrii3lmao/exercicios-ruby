def soma_consecultipos(arr)
    soma = 0
    i = 0
    while i < arr.length - 1 do 
         if arr[i].even? 
            if arr[i+1] == arr[i] + 2
                soma += arr[i] + arr[i+1]
                if arr[i+2] == arr[i+1] + 2
                    soma += arr[i+2]
                    i += 1
                end
                i += 2  
            else 
                i += 1
            end
         else 
            if arr[i+1] == arr[i] + 2
                soma += arr[i] + arr[i+1]
                if arr[i+2] == arr[i+1] + 2
                    soma += arr[i+2]
                end
                i += 2
            else 
                i += 1
            end
         end
    end
    soma
end

puts soma_consecultipos([2, 4, 5, 9, 11, 13, 15, 17])