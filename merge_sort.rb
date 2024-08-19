def merge_sort(arr)
  return arr if arr.length == 1 || arr.length == 0
  mid = arr.length/2
  left = merge_sort(arr[0..mid-1])
  right = merge_sort(arr[mid..-1])

  sorted = []

  until left.empty? || right.empty?
    if left[0] < right[0]
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  
  sorted + left + right
end


p merge_sort([3,2,1,3,13,5,8,0,1])