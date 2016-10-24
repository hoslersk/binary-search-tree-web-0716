require 'pry'

class BST

  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(data)
    if self.data >= data
      if !self.left
        self.left = BST.new(data)
      else
        self.left.insert(data)
      end
    elsif self.data < data
      if !self.right
        self.right = BST.new(data)
      else
        self.right.insert(data)
      end
    end
  end

  ARRAY = []

  def each
    if self.left
      ARRAY.push(self.left.data)
      self.left.each
    end
    if self.right
      ARRAY.push(self.right.data)
      self.right.each
    end
    ARRAY.push(self.data)
    return ARRAY.sort
  end

end
