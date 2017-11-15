local array = {-1, 5, -2, 10, 4}



function bubbleSort(array)
    local len = table.getn(array)
    for i = len - 1, 2, -1 do
        for j = 1, i do
            if array[j] > array[j + 1] then
                local temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            end
        end
    end
end


bubbleSort(array)

for i = 1, #array do
    print(array[i])
end