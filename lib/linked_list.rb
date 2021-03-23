require_relative 'node.rb'

class LinkedList
  attr_accessor :root

  def initialize
    @root = Node.new
  end

  def append(value)
    if root.value.nil?
      root.value = value
    else
      pointer = root
      until pointer.next_node.nil?
        pointer = pointer.next_node
      end
      pointer.next_node = Node.new(value)
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    pointer = @root
    @root = new_node
    new_node.next_node = pointer
  end

  def size

  end
end