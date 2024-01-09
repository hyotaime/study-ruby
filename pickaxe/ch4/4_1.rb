# frozen_string_literal: true

# 4.1 배열
a = [3.14159, 'pie', 99]
p a.class
p a.length
p a[0]
# p a + 2
p a[1]
p a[2]
p a[3]

b = Array.new
p b.class
p b.length
b[0] = 'second'
b[1] = 'array'
p b

a = [1, 3, 5, 7, 9]
p a[-1]
p a[-2]
p a[-99]

a = [1, 3, 5, 7, 9]
p a[1, 3]
p a[3, 1]
p a[-3, 2]

a = [1, 3, 5, 7, 9]
p a[1..3]
p a[1...3]
p a[3..3]
p a[-3..-1]

a = [1, 3, 5, 7, 9]
a[1] = 'bat' #=> [1, "bat", 5, 7, 9]
a[-3] = 'cat' #=> [1, "bat", "cat", 7, 9]
a[3] = [9, 8] #=> [1, "bat", "cat", [9, 8], 9]
a[6] = 99 #=> [1, "bat", "cat", [9, 8], 9, nil, 99]

a = [1, 3, 5, 7, 9]
a[2, 2] = 'cat' #=> [1, 3, "cat", 9]
a[2, 0] = 'dog' #=> [1, 3, "dog", "cat", 9]
a[1, 1] = [9, 8, 7] #=> [1, 9, 8, 7, "dog", "cat", 9]
a[0..3] = [] #=> ["dog", "cat", 9]
a[5..6] = 99, 98 #=> ["dog", "cat", 9, nil, nil, 99, 98]

# stack
stack = []
stack.push 'red'
stack.push 'green'
stack.push 'blue'
p stack #=> ["red", "green", "blue"]
p stack.pop #=> "blue"
p stack.pop #=> "green"
p stack.pop #=> "red"

# queue
queue = []
queue.push 'red'
queue.push 'green'
p queue #=> ["red", "green"]
p queue.shift #=> "red"
p queue.shift #=> "green"

# first, last
a = [1, 3, 5, 7, 9]
p a.first #=> 1
p a.last #=> 9
p a.first(4) #=> [1, 3, 5, 7]
p a.last(4) #=> [3, 5, 7, 9]
