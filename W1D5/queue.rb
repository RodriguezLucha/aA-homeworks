class Queue
  def initialize
    @arr = []
  end

  def enqueue(el)
    @arr.push(el)
  end

  def dequeue
    return nil if @arr.empty?

    @arr.shift
  end

  def peek
    @arr.first
  end
end

if $PROGRAM_NAME == __FILE__
  my_queue = Queue.new
  my_queue.enqueue(1)
  my_queue.enqueue(2)
  my_queue.enqueue(3)
  my_queue.enqueue(4)
  my_queue.dequeue
  p my_queue.peek # 2
  end
