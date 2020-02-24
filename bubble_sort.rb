def bubble_sort(arr)
  arr_to_sort = arr
  j = 1
  arr_to_sort.length.times do
    i = 0
    while i < arr_to_sort.length - j
      arr_to_sort[i], arr_to_sort[i + 1] = arr_to_sort[i + 1], arr_to_sort[i] if arr_to_sort[i] > arr_to_sort[i + 1]
      i += 1
    end
    j += 1
  end
  arr_to_sort
end

arr = [5, 4, 3, 2, 1]
puts "unordered array: #{arr}"
arr_sorted = bubble_sort(arr)
puts "ordered array: #{arr_sorted}"

def bubble_sort_by(arr)
  arr_to_sort = arr
  j = 1
  arr_to_sort.length.times do
    i = 0
    while i < (arr_to_sort.length - j)
      larger = yield(arr_to_sort[i], arr_to_sort[i + 1])
      arr_to_sort[i], arr_to_sort[i + 1] = arr_to_sort[i + 1], arr_to_sort[i] if larger > 1
      i += 1
    end
    j += 1
  end
  arr_to_sort
end

array_string = %w[hello hi hey]

array_sorted = bubble_sort_by(array_string) do |left, right|
  left.length - right.length
end

p array_sorted
