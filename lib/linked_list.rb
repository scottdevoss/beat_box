require './lib/node'
require 'pry'

class LinkedList 
  attr_reader :head
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
    # if @head.nil?
    #   @head = Node.new(data)
    # else 
    #   last_node = @head
      
    #   until last_node.next_node.nil?
    #     last_node = last_node.next_node
    #   end
    #   #We are at the end of the list
    #   last_node.next_node = Node.new(data)
  
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
    while current_node
      count += 1
      current_node = current_node.next_node
    end
    count
    #require 'pry'; binding.pry
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

    # # start with empty string
    #   string = ""
    #   current_node = @head
    #   while current_node 
    #     string << current_node.data + " "
    #     current_node = current_node.next_node
  
    #     #add the nodes data to the string
    #   end 
    #   string
    end


    def find(start_position, count)
      return "" if start_position < 0 || count <= 0
      
      result = ""
      current = @head
      position = 0
      
      while current && position < start_position + count
        if position >= start_position
          result << current.data
        end
        
        current = current.next_node
        position += 1
      end
      
      result
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









