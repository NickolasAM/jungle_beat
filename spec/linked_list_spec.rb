require 'rspec'
require "./lib/node"
require './lib/linked_list'

RSpec.describe LinkedList do
  describe '#initialize' do
    it  'exists' do
      list = LinkedList.new
      expect(list).to be_an_instance_of(LinkedList)
    end

    it  'has attributes' do
      list = LinkedList.new
      
      expect(list.head).to eq nil
    end
  end

  describe '#append' do
    it 'can append a node' do
      list = LinkedList.new
      list.append("doop")
      
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq nil
    end

    it 'appends 2 nodes' do
    list = LinkedList.new
      list.append("doop")
      list.append("deep")


      expect(list.head.data).to eq("doop")
      expect(list.head.next_node.data).to eq("deep")
      expect(list.head.next_node.next_node).to eq nil
    end
  end

  describe '#to_string' do
    it 'to_string' do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list.to_string).to eq("doop deep")
    end
  end

  describe '#count' do
    it 'count' do
      list = LinkedList.new
      expect(list.count).to eq(0)
      list.append("doop")
      expect(list.count).to eq(1)
      list.append("deep")
      expect(list.count).to eq(2)
    end
  end

  describe '#prepend'do 
    it 'prepend' do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      dop = list.prepend("dop")

      expect(dop).to eq("dop")
      expect(list.to_string).to eq("dop plop suu")
      expect(list.count).to eq(3)
    end
  end

  describe '#insert' do
    it 'insert' do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      dop = list.prepend("dop")

      expect(list.insert(1, "woo")).to eq("woo")
      expect(list.to_string).to eq("dop woo plop suu")
    end
  end
end
# require 'pry';binding.pry







