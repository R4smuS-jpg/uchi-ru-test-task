arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

# 2.a
p arr.map(&:keys).flatten # => [:a, :b, :c, :d, :c, :e]

# 2.b
p arr.map(&:values).flatten # => [1, 2, 45, 123, 12, 87]

# 2.c
p arr.map(&:values).flatten.sum # => 270
