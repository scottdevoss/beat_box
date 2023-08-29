# require './lib/node'
# require 'pry'

class LinkedList 
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data) #make a new node
    if @head == nil           #check if the node has a head
      @head = new_node        #if there is no head, make the new node the head
    else
      current_node = @head
      until current_node.next_node == nil      #if there is a head, see if it points to another node
        current_node = current_node.next_node   #access the next node in a loop until we get nil
      end
      current_node.next_node = new_node       #the current nodes next node is the new node
    end 
  end

  def prepend(data)
    new_node = Node.new(data)     #make a new node
    new_node.next_node = @head    #set the new nodes next node to the head
    @head = new_node
  end

  def insert(position, data)
    new_node = Node.new(data)  #make a new node

    if position == 0            #if position == 0, the new nodes next node is set to the head
      new_node.next_node = @head
      @head = new_node
    end

    current_node = @head          #still need practice talking through this one
    (position - 1).times do 
      break if current_node.nil?
      current_node = current_node.next_node
    end

    return if current_node.nil?
  
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def count 
    count = 0        #set the count to 0
    current_node = @head       #set the current node to the head

    if @head == nil        #if the head is nil, return count
      count
    else 
      until current_node.next_node == nil  #loop until the current nodes next node is equal to nil then add 1 to the count
        count += 1
        current_node = current_node.next_node
      end 
      count += 1
    end
    count                 #return final count
  end

  def to_string
    string_node = @head
    string_words = []
    while string_node
      string_data = string_node.data.to_s
      string_words << string_data
      string_node = string_node.next_node
    end
    string_words.join(" ")
  end 

  def find(index, count)
    return "" if index < 0 || count <= 0
  
    result = []
    search = to_string.split
    new_index = index + count - 1
    result.push(search[index..new_index])
    joined_result = result.join(" ")
  end

  def includes?(string)
    node = @head
    while node
      return true if node.data == string
      node = node.next_node
    end
    false
  end

  def pop
    node = @head
    return nil if node.nil?

    if node.next_node == nil
      next_node
    else
      until node.next_node.nil?
        node = node.next_node
      end
      node.data
    end
  end

end 

# binding.pry









