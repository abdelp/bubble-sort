def bubble_sort(arr)
  arr_to_sort = arr
  j = 1 
  (arr_to_sort.length).times {
    i = 0

    while(i < arr_to_sort.length - j) do 

	if(arr_to_sort[i] > arr_to_sort[i + 1])
	  arr_to_sort[i], arr_to_sort[i+1] = arr_to_sort[i+1], arr_to_sort[i]
	end

	i += 1
    end
    j += 1
  }

  arr_to_sort
end

arr = [5,4,3,2,1]
puts "unordered array: #{arr}"
arr_sorted = bubble_sort(arr)
puts "ordered arr: #{arr_sorted}"

def bubble_sort_by(arr) 
  yield(arr)
end

array_string = ["hello","hi","hey"]

bubble_sort_by(array_string) do |array_inside_block|
    arr_to_sort = array_inside_block
  j = 1 
  (arr_to_sort.length).times {
    i = 0

    while(i < arr_to_sort.length - j) do 

	if(arr_to_sort[i] < arr_to_sort[i + 1])
	  arr_to_sort[i], arr_to_sort[i+1] = arr_to_sort[i+1], arr_to_sort[i]
	end

	i += 1
    end
    j += 1
  }

  arr_to_sort
end
