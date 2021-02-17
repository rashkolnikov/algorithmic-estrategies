# The bubble_sort method accepts an array of numbers.
# The method returns a single array with the elements in increasing order.

def bubble_sort(arr)

    while !sorted
        sorted = true

        (0...arr.length - 1).each{ |idx| 
            if arr[idx] > arr[idx + 1]
                arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
                sorted = false
            end
        }
    end

    arr
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]