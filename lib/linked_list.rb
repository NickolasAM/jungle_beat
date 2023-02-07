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

    # xdef to_string
    #   children.map
    # end

    # xxdef count
    #   count = 0
    #   if @head != nil
    #     count += 1
    #     current = @head
    #     while current.next_node != nil
    #       current = current.next_node
    #       count += 1
    #     end
    #   end
    #   return count
    # end

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
    require'pry';binding.pry
    node = Node.new(beat)
    if @head == nil
      @head = node
    else
      current = @head
      #we do want @head always point to the head of linkedlist so we have a copy = current(chnage Variable)
      (index - 1).times do
        current = current.next_node
      end
        node.next_node = current.next_node
        current.next_node = node
    end  
    return beat
  end
end



  # xdef count 
  #   children.count
  # end

  # xprivate

  # def children_nodes
  #   children = []
  #   current = @head 
  #   while current != nil
  #     children.push(current)
  #     current = current.next_node
  #   end
  #   return children
  # end