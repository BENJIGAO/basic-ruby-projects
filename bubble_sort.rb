# frozen_string_literal: true

def bubble_sort(arr)
  index = 0
  unsorted = true
  while unsorted
    unsorted = false
    for i in 0...(arr.length - index - 1)
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        unsorted = true
      end
    end
    index += 1
  end
  arr
end

data = [4, 3, 78, 2, 0, 2]

p bubble_sort(data)
# => [0, 2, 2, 3, 4, 78]
