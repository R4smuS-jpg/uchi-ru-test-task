array = [1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893]

# 1.a
def two_max(arr)
  [arr.delete(arr.max), arr.max]
end

# 1.b
def two_min(arr)
  [arr.delete(arr.min), arr.min]
end

p two_max(array) # => [999, 893]
p two_min(array) # => [0, 1]
