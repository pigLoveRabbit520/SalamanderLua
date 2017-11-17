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

-- 快速排序
function quickSort(arr, startPos, endPos)
    if(endPos - startPos == 1) then
        if(arr[startPos] > arr[endPos]) then
            arr[startPos], arr[endPos] = arr[endPos], arr[startPos]
        end
    elseif endPos - startPos > 1 then
        local middle = arr[startPos]
        local i = startPos
        local j = endPos
        while (i ~= j and i <= endPos and j >= startPos) do
            while(arr[j] >= middle and j > i) do
                j = j - 1
            end
            if(j > i) then
                arr[i] = arr[j];
                i = i + 1
            end
            while(arr[i] <= middle and i < j) do
                i = i + 1
            end
            if(i < j) then
                arr[j] = arr[i];
                j = j - 1
            end
        end

        arr[i] = middle;
        quickSort(arr, startPos, i - 1)
        quickSort(arr, i + 1, endPos)
    end
end


bubbleSort(array, 1, #array)

for i = 1, #array do
    print(array[i])
end