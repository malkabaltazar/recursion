def merge_sort(arr)
  if arr.length < 2
    return arr
  else
    i = arr.length / 2.to_i; i += 1 if arr.length.odd?
    arr1 = merge_sort(arr[0..i-1])
    arr2 = merge_sort(arr[i..-1])
    # Compare the first elements in two lists and append the smallest.
    arr3 = [] if !arr3
    until arr1 == [] || arr2 == []
      if arr1[0].to_i < arr2[0].to_i
        arr3.push(arr1[0]); arr1.shift
      else
        arr3.push(arr2[0]); arr2.shift
      end
    end
    if arr1 == [] then arr3.push(*arr2) else arr3.push(*arr1) end
    return arr3
  end
end

puts merge_sort([2, 6, 4, 9, 7, 3, 2])
