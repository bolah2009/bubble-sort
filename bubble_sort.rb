# frozen_string_literal: true

def bubble_sort(array)
  sorting(array)
  array
end

def bubble_sort_by(array, &block)
  raise LocalJumpError, 'no block given' unless block

  sorting(array, &block)
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
