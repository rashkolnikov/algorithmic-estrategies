# The swapper(arr, idx_1, idx_2) method accepts an array and two indices as args.
# The method swap the elements at the given indices and return the array.

def swapper(arr, idx_1, idx_2)

    arr[idx_1], arr[idx_2] = arr[idx_2], arr[idx_1] # You can swap the elements in this way to do it in one line of code 

    arr
end

# If you don't do it this way, you should write the following code.

=begin
    value_idx1 = idx_1
    arr[idx_1] = arr[idx_2]
    arr[idx_2] = arr[value_idx1]
    arr   
=end

p swapper(["a", "b", "c", "d"], 0, 2)               # => ["c", "b", "a", "d"]
p swapper(["a", "b", "c", "d"], 3, 1)               # => ["a", "d", "c", "b"]
p swapper(["canal", "broadway", "madison"], 1, 0)   # => ["broadway", "canal", "madison"]
