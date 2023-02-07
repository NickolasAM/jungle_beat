class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(beat)
    node = Node.new(beat)
   if @head == nil
     @head = node
   else 
    current = @head
      while current.next_node != nil
        current = current.next_node
      end
    current.next_node = node
   end 

    return beat
  end

  def to_string
    str = ""
    if @head != nil
      str += @head.data
      current = @head
      while current.next_node !=nil
        current = current.next_node
        str += " #{current.data}"
      end
    end
    # require'pry';binding.pry
    return str
  end

  def count 
    count = 0
    current = @head
    while current != nil
      count += 1
      current = current.next_node
    end
    return count
  end

  def prepend(beat)
    node = Node.new(beat)
    if @head == nil
      @head = node
    else
      node.next_node = @head
      @head = node 
    end 

    return beat 
  end

  def insert(index, beat)
    node = Node.new(beat)
    if @head == nil
      @head = node
    else
      current = @head
      # require'pry';binding.pry
      #we do want @head always point to the head of linkedlist so we have a copy = current(chnage Variable)
      (index - 1).times do
        current = current.next_node
      end
        node.next_node = current.next_node
        current.next_node = node
    end  
    return beat
  end

  def find(index, beat)
    str = ""
    current = @head
    index.times do
      current = current.next_node
    end
    str += "#{current.data}"
    (beat - 1).times do
      current = current.next_node
      str += " #{current.data}"
    end
    return str
  end

  def includes?(data)
    current = @head
    while current.next_node !=nil
      if current.data == data
        return true
      end
      current = current.next_node
    end  
    return false
  end

  def pop
    if @head == nil
      return nil
    else current = @head
      current = current.next_node
      current 
    end
  end
end
