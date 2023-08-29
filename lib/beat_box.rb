require "./lib/linked_list"
require "./lib/node"
require 'pry'

class BeatBox
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    split_nodes = data.split
    split_nodes.each do |data|
      @list.append(data)
    end
  end

  def count
    list.count
  end

  def play
    list.to_string
    `say -r 100 -v Boing #{list.to_string}`
  end
end

# binding.pry