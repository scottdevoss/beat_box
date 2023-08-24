require "./lib/linked_list"
require './lib/node'
require 'rspec'

RSpec.describe LinkedList do
  describe '#initialize' do

    it 'is an instance of linked list' do
      list = LinkedList.new
      expect(list).to be_instance_of(LinkedList)
      
    end
  end
end