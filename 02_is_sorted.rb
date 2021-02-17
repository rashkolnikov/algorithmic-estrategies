# The is_sorted(arr) method accepts an array of numbers as an arg.
# The method returns true if the elements are in increasing order, false otherwise.

def is_sorted(arr)
    
    (0...arr.length - 1).each{ | idx | return false if arr[idx] > arr[idx + 1]  }

    true
end

p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4 ])         # => false
