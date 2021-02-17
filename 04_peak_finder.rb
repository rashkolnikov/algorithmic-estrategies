# The peak_finder(arr) method accepts an array of numbers as an arg.
# The method returns an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.

def peak_finder(arr)

    peaks = []

    arr.each.with_index{ |num, idx| 
        left = arr[idx - 1]
        right = arr[idx + 1]

        if idx == 0 && num > right
            peaks << num
        elsif idx == arr.length - 1 && num > left
            peaks << num
        elsif num > left && num > right
            peaks << num
        end 
    }

    peaks
end


p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
p peak_finder([1, 3])               # => [3]
p peak_finder([3, 1])               # => [3]
