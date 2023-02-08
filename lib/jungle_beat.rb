class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(beats)
    beats.split.each do |beat|
      list.append(beat)
    end
    return beats
  end
  
  def count
    list.count
  end
  
  def play
    `say -r 150 #{list.to_string}`
  end
  # require'pry';binding.pry
end