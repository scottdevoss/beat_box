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

    it 'add an element' do
      list = LinkedList.new
      list.append("doop")
      #list.append("deep")
      # require 'pry'; binding.pry
      expect(list).to be_an_instance_of(LinkedList)
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