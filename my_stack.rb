class MyQueue

  def initialize
    @store = []
  end

  def enqueue(item)
    @store << item
  end

  def dequeue
    @store.shift
  end

  def size
    @store.count
  end

  def empty?
    @store.empty?
  end

  def peek
    @store.first
  end

end

class Node
  attr_reader :max, :value
  def initialize(value, max)
    @value, @max = value, max
  end

end

class MyStack
  def initialize
    @store = []
  end

  def pop
    @store.pop
  end

  def push(item)
    temp_max = item if empty?
    temp_max = (max_val > item ? max_val : item) unless empty?
    @store.push(Node.new(item, temp_max))
  end

  def max_val
    return -100000000000 if empty?
    peek.max
  end

  def peek
    @store.last
  end

  def size
    @store.count
  end

  def empty?
    @store.empty?
  end

end
