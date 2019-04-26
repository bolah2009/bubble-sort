def bubble_sort(array)
  not_sorted = true
  n = array.length - 1
  while not_sorted
    not_sorted = false
    (0...n).each do |i|
      next unless array[i] > array[i + 1]

      array[i], array[i + 1] = array[i + 1], array[i]
      not_sorted = true
    end
    n -= 1
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
#=> [0,2,2,3,4,78]
