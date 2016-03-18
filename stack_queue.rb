require_relative 'my_stack'
class StackQueue
  def initialize
    @push_stack, @pop_stack = MyStack.new, MyStack.new
  end

  def queue(item)
    @push_stack.push(item)
  end

  def dequeue

    until @push_stack.empty?
      @pop_stack.push(@push_stack.pop.value)
    end

    @pop_stack.pop
  end

  def size
    @push_stack.size + @pop_stack.size
  end

  def empty?
    @push_stack.empty? && @pop_stack.empty?
  end

  def max
    @push_stack.max_val > @pop_stack.max_val ? @push_stack.max_val : @pop_stack.max_val
  end

end
