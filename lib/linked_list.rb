# require './lib/node'
# require 'pry'

class LinkedList 
  attr_accessor :head
  def initialize
    @head = nil
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

    current_node = @head
    (position - 1).times do 
      break if current_node.nil?
      current_node = current_node.next_node
    end

    return if current_node.nil?
  
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def count 
    count = 0
    current_node = @head

    if @head == nil 
      count
    else 
      until current_node.next_node == nil
        count += 1
        current_node = current_node.next_node
      end 
      count += 1
    end
    count 
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









