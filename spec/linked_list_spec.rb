require "./lib/linked_list"
require './lib/node'
require 'rspec'

RSpec.describe LinkedList do
  describe '#initialize' do

    it 'is an instance of linked list' do
      list = LinkedList.new
      expect(list).to be_instance_of(LinkedList)
    end

    it 'has a head' do
      list = LinkedList.new
      expect(list.head).to be_nil
    end

    it 'adds a new piece of data to the list' do
      list = LinkedList.new
      expect(list.append("doop")).to eq ("doop")
    end
  end
end