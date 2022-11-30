arr = [nil, 2, :foo, 'bar', 'foo', 'apple', 'orange', :orange, 45,  nil, :foo, :bar, 25, 45, :apple, 'bar', nil]

p arr.uniq.map { |x| [x, arr.count(x)] }.to_h
# => {nil=>3, 2=>1, :foo=>2, "bar"=>2, "foo"=>1, "apple"=>1, "orange"=>1, :orange=>1, 45=>2, :bar=>1, 25=>1, :apple=>1}
