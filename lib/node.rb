class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
  end

  def next_node
    @next_node ||= nil
  end
end