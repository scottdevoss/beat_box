require "./lib/linked_list"
require './lib/node'
require './lib/beat_box'
require 'rspec'
require 'pry'

RSpec.describe BeatBox do
  describe '#initialize' do

    #describe "#BeatBox" do
    it 'is an instance of BeatBox' do
      bb = BeatBox.new

      expect(bb).to be_instance_of(BeatBox)
    end
  end 

  #describe "#bb append" do
  it 'splits the string' do
    bb = BeatBox.new
    
    bb.append("deep doo ditt")
  
    expect(bb.list.head.data).to eq("deep")
    expect(bb.list.head.next_node.data).to eq("doo")
  end 

  #describe 'plays sounds' do
  it 'plays sounds' do
    bb = BeatBox.new
    bb.append("deep doo ditt woo hoo shu")

    expect(bb.play).to be_empty
  end
end