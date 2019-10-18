# Project 1: Bubble Sort

## PROJECT: ADVANCED BUILDING BLOCKS (Project 1: Bubble Sort)

This is the first project of the main `Ruby` curriculum at [Microverse](https://www.microverse.org/) - @microverseinc

### [Assignment link](https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks#assignment-1)

#### The objectives are as follows:

1. Build a method `#bubble_sort` that takes an array and returns a sorted array using the [bubble sort algorithm](https://en.wikipedia.org/wiki/Bubble_sort).

```ruby
def bubble_sort(array)
  sorting(array)
  array
end

def sorting(array, &block)
  index = array.length - 1
  not_sorted = true
  while not_sorted
    not_sorted = false
    (0...index).each do |i|
      if block
        next unless block.call(array[i], array[i + 1]).positive?
      else
        next unless array[i] > array[i + 1]
      end

      array[i], array[i + 1] = array[i + 1], array[i]
      not_sorted = true
    end
    index -= 1
  end
end

p bubble_sort([4, 3, 78, 2, 0, 2])

#=> [0,2,2,3,4,78]
```

2. Build another method `#bubble_sort_by` which sorts an array by accepting a block. It raises a **LocalJumpError** error when no block is given.

```ruby
def bubble_sort_by(array, &block)
  raise LocalJumpError, 'no block given' unless block

  sorting(array, &block)
  array
end

bubble_sort_by(['hi', 'hello', 'hey']) do |left, right|
  left.length <=> right.length
end

#=> ["hi", "hey", "hello"]
```

#### Contact

- [Web](https://bolabuari.com/) - [Twitter](https://twitter.com/bolah2009) - [GitHub](https://github.com/bolah2009/) - [GitLab](https://gitlab.com/bolah2009/) - [LinkedIn](https://www.linkedin.com/in/bolah2009/)
