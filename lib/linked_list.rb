class LinkedList 
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)
    
    if @head.nil?
      @head = Node.new(data)
    else 
      last_node = @head
      
      # until last_node.next_node.nil?
      #   last_node = lastNode.next_node
      # end
      #We are at the end of the list
      last_node.next_node = Node.new(data)
      # require 'pry'; binding.pry
    end 
  
  end

  def count 
    count = 0
    count += 1
  end

  def to_string
  # start with empty string
    string = ""
    if @head.nil?
      string
    else
      string = string + @head.data #"doop"

      #iterate until we get nil
      #add the nodes data to the string
    end 
    string
  end
  
end 












