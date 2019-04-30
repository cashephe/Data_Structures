class Stack
  attr_reader :stack
  def initialize
    @stack = []
  end
  def push(el)
    @stack << el
  end
  def pop
    @stack.pop
  end
  def peek
    @stack[-1]
  end
end

class Queue
  attr_reader :queue
  def initialize
    @queue = []
  end
  def enqueue(el)
    @queue.unshift(el)
  end
  def dequeue
    @queue.pop
  end
  def peek
    @queue[-1]
  end
end

class Map
  def initialize
    @map = []
  end

  def set(key, value)
    @map.each do |arr|
      if arr[0] == key
        arr[1] = value
        return @map
      end
    end
    @map << [key,value]
  end

  def get(key)
    @map.each do |arr|
      if arr[0] == key
        return arr[1]
      end
    end
    return "Key doesn't exist"
  end
  
  def show
    @map
  end
end
