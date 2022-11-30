arr = [nil, 1, :foo]
arr.delete(nil)

p arr # => [1, :foo]

arr = [nil, 1, :foo]
arr.compact

p arr # => [1, :foo]
