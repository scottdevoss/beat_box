require "./lib/linked_list"
require './lib/node'
require './lib/beat_box'
require 'rspec'
require 'pry'

RSpec.describe LinkedList do
  describe '#initialize' do

    it 'is an instance of linked list' do
      list = LinkedList.new
      list.append("doop")
      expect(list).to be_instance_of(LinkedList)
    end

    #describe "#head"
    it 'has a head' do
      list = LinkedList.new
      expect(list.head).to be_nil
    end

   #describe "#append" do
    it 'add a new piece of data to list' do
      list = LinkedList.new
      list.append("doop")
      
      expect(list.head).to be_a Node
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to be_nil
      expect(list).to be_instance_of(LinkedList)

      list.append("deep")

      expect(list.head.next_node).to be_a Node
      expect(list.head.next_node.data).to eq("deep")
      expect(list.head.next_node.next_node).to be nil
    end
  
    #describe "#prepend" do
    it 'will add nodes to the beginning of the list' do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")

      list.prepend("dop")

      expect(list.head.data).to eq("dop")
      expect(list.head.next_node.data).to eq("plop")
    end

    #describe "#insert" do
    it 'will insert one or more elements at a given position in the list' do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")

      list.prepend("dop")

      list.insert(1, "woo")

      expect(list.to_string).to eq("dop woo plop suu")
    end

    #describe "#count" do
    it 'counts the nodes' do
      list = LinkedList.new
      list.append("doop")
      expect(list.count).to eq(1)

      list.append("deep")
      expect(list.count).to eq(2)
    end

    #describe "#to_string" do
    it 'turns data to string' do
      list = LinkedList.new
      list.append("doop")
      expect(list.to_string).to eq("doop")

      list.append("deep")
      expect(list.to_string).to eq("doop deep")
    end

    #describe "#find" do
    it 'indicates the first position and specifies how many elements to return' do
      list = LinkedList.new
      list.append("shi")
      list.append("shu")
      list.append("blop")
      list.prepend("deep")
      list.insert(1, "woo")

      # "deep woo shi shu blop"

      # expect(list.to_string).to eq("deep woo shi shu blop ")

      expect(list.find(2, 1)).to eq("shi")
      expect(list.find(1, 3)).to eq("woo shi shu")
    end 

    #describe "#includes?" do
    it 'gives back true or false whether the supplied value is in the list' do
      list = LinkedList.new
      list.append("deep")

      expect(list.includes?("deep")).to be true
      expect(list.includes?("dep")).to be false
    end

    #describes "#pop" do
    it 'removes the last element from the list and returns it' do
      list = LinkedList.new
      list.append("doop")
      list.append("blop")

      expect(list.pop).to eq("blop")
    end

  end 

    #describe "#BeatBox" do
    it 'is an instance of BeatBox' do
      bb = BeatBox.new
      list = LinkedList.new

      expect(bb).to be_instance_of(BeatBox)
    end
  

    #describe "#bb append" do
    it 'splits the string' do
      bb = BeatBox.new
      list = LinkedList.new
      bb.append("deep doo ditt")

      expect(bb.list.head.data).to eq("deep")
    end
end