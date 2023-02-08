require 'rspec'
require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do
  describe '#initialize' do
    it 'exists' do
      jb = JungleBeat.new
      jb.list

      expect(jb).to be_an_instance_of(JungleBeat)
      expect(jb.list).to be_an_instance_of(LinkedList)
      expect(jb.list.head).to eq(nil)
    end
  end

  describe '#append' do
    it 'splits the string' do
      jb = JungleBeat.new

      expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
      expect(jb.list.head.data).to eq("deep")
      expect(jb.list.head.next_node.data).to eq("doo")
    end

    it 'adds another set of nodes' do
      jb = JungleBeat.new
      jb.append("deep doo ditt")

      expect(jb.append("woo hoo shu")).to eq("woo hoo shu")
      expect(jb.count).to be(6)
    end
  end

  describe '#play' do
    it 'plays a beat' do
      jb = JungleBeat.new
      jb.append("deep doo ditt woo hoo shu")

      expect(jb.count).to be(6)
      expect(jb.list.count).to be(6)
      expect(jb.play).to be()
    end

  end

end






