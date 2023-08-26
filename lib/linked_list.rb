class LinkedList 
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)
    
    if @head.nil?
      @head = Node.new(data)
      #require 'pry'; binding.pry
    else 
      last_node = @head
      
      until last_node.next_node.nil?
        last_node = lastNode.next_node
      end
      #We are at the end of the list
      last_node.next_node = Node.new(data)
    end 
  
  end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node = @head
    @head = new_node
  end

  def insert(position, data)
    new_node = Node.new(data)

    if position == 0
      new_node.next_node = @head
      @head = new_node
    end

    current = @head
    (position - 1).times do 
      break if current.nil?
      current = current.next_node
    end

    return if current.nil?

    new_node.next_node = current.next_node
    current.next_node = new_node
  end

  def count 
    count = 0
    current = @head
    while current
      count += 1
      current = current.next_node
    end
    count
    #require 'pry'; binding.pry
  end

  def to_string
  # start with empty string
    string = ""
    current = @head
    while current 
      string << current.data
      current = current.next_node

      #iterate until we get nil
      #add the nodes data to the string
    end 
    string
  end
  
end 












