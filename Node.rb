class Node

  attr_accessor :data, :next

  def initialize data
    @data = data
    @next = nil
  end

  def print_data
    print @data
    print " "
  end

end