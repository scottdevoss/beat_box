require "./lib/linked_list"
require './lib/node'
require 'rspec'
require 'pry'

RSpec.describe LinkedList do
  describe '#initialize' do

    it 'is an instance of linked list' do
      list = LinkedList.new
      list.append("doop")
      expect(list).to be_instance_of(LinkedList)
    end

    it 'has a head' do
      list = LinkedList.new
      #list.append("doop")
      expect(list.head).to be_nil
    end

   #describe "#append" do
    it 'add a new piece of data to list' do
      list = LinkedList.new
      list.append("doop")
      #list.append("deep")
      # require 'pry'; binding.pry
      expect(list.head).to be_a Node
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to be_nil
      expect(list).to be_instance_of(LinkedList)

      list.append("deep")

      expect(list.head.next_node).to be_a Node
      expect(list.head.next_node.data).to eq("deep")
      expect(list.head.next_node.next_node).to be nil
    end
  

    it 'counts the nodes' do
      list = LinkedList.new
      list.append("doop")
      expect(list.count).to eq(1)
    end

    it 'turns data to string' do
      list = LinkedList.new
      list.append("doop")
      expect(list.to_string).to eq("doop")
    end
  end
end