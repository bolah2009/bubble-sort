# Project 1: Bubble Sort

## PROJECT: ADVANCED BUILDING BLOCKS (Project 1: Bubble Sort)

This is the first project of the main `Ruby` curriculum at [Microverse](https://www.microverse.org/) - @microverseinc


### [Assignment link](https://www.theodinproject.com/courses/html5-and-css3/lessons/design-your-own-grid-based-framework)

#### The objective are as follows:

1. Build a method `#bubble_sort` that takes an array and returns a sorted array.

``` rb
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
```

2. Build another method `#bubble_sort_by` which sorts an array by accepting a block

``` rb
def bubble_sort_by(array)
  not_sorted = true
  n = array.length - 1
  while not_sorted
    not_sorted = false
    (0...n).each do |i|
      next unless yield(array[i], array[i + 1]) > 0
      array[i], array[i + 1] = array[i + 1], array[i]
      not_sorted = true
    end
    n -= 1
  end
  p array
end
bubble_sort_by(['hi', 'hello', 'hey']) do |left, right|
  left.length <=> right.length
end
# ["hi", "hey", "hello"]
```

#### Contact
* [Web](https://bolabuari.com/) - [Twitter](https://twitter.com/bolah2009) - [GitHub](https://github.com/bolah2009/) - [GitLab](https://gitlab.com/bolah2009/) - [LinkedIn](https://www.linkedin.com/in/bolah2009/)
