class LinkedList 
  attr_reader :head, :data, :next_node
  def initialize
    @head = nil
    @data
    @next_node

  end

  def append(sound)
    if (@data)
      @data.append(sound)
    else @data = sound
    end
  end

end