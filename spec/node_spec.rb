require 'rspec'
require "./lib/node"

RSpec.describe Node do
  it 'exists' do
    node = Node.new("plop")
    
    expect(node).to be_an_instance_of(Node)
    expect(node.data).to eq("plop")
  end
  
  it 'next_node' do
    node = Node.new("plop")
    
    expect(node.next_node).to eq(nil)
  end

  it 'next_node=' do
    node = Node.new("plop")
    node2 = Node.new("bloop")
    node.next_node = node2

    expect(node.next_node).to eq(node2)
  end
end