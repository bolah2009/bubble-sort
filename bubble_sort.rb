def bubble_sort(array)
  not_sorted = true
  n = array.length - 1
  while not_sorted
    (0...n).each do |i|
      if array[i] > array[i + 1]
        print "#{i} "
        not_sorted = true
        temp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = temp
      elsif (array[i+1] == array[-1])&&(array[0]<array[1])
        not_sorted = false
      end
    end
    p array
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
#=> [0,2,2,3,4,78]
