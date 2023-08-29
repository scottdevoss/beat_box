require './lib/node'
require 'rspec'

RSpec.describe Node do
  describe '#initialize' do
    it 'is an instance of node' do
      node = Node.new("plop")
      expect(node).to be_instance_of(Node)
    end
  end
end