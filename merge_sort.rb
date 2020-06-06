def merge_sort(arr, result=[])
  if arr.length < 2
    return arr
  else
    # sort left half
    left = merge_sort(arr[0, arr.length/2])
    
    # sort right half
    right = merge_sort(arr[arr.length/2, arr.length])
    
    # merge them together
    comb = (left + right).flatten
    # p "left: #{left}"
    # p "right: #{right}"
    comb.length.times do
      result.push(comb.min)
      comb.delete_at(comb.index(comb.min)) # delete only 1 value if there are duplicates
    end
    # p "result: #{result}" 
  end
  result
end

p merge_sort([2, 6, 5, 3 ,4 ,1, 8, 7])
p merge_sort([9, 8, 7, 6, 5, 4, 3, 2, 1])
p merge_sort([1, 2, 6, 3, 7, 12, 6, 3, 2, 467])
