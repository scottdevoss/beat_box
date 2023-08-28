require 'pry'

class BeatBox
  attr_accessor :linked_list
  def initialize
    @linked_list = LinkedList.new
  end

  def list 
    @linked_list
  end

  def append(data)
    new_node = Node.new(data)
    if @head == nil
      @head = new_node
    else
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end 

      split_nodes = new_node.data.split(" ")
       split_nodes.each do |word|
        word = Node.new(data)
      end 
    

  end


  def play
    
  end
end

