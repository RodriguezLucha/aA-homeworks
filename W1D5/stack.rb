class Stack
  def initialize
    # create ivar to store stack here!
    @arr = []
  end

  def push(el)
    # adds an element to the stack
    @arr.push(el)
  end

  def pop
    # removes one element from the stack
    return nil if @arr.empty?

    @arr.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @arr.last
  end
end

if $PROGRAM_NAME == __FILE__
  my_stack = Stack.new
  my_stack.push(1)
  my_stack.push(2)
  my_stack.push(3)
  my_stack.pop
  p my_stack.peek # 2
end