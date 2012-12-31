require './Node'

class LinkedList

  attr_accessor :first
  
  def initialize
    @first = nil
  end

  def add_last data
    if first == nil
      node = Node.new data
      node.next = self.first
      self.first = node
    else
      current_node = first
      
      # Traversing till we reach the end of the LinkedList
      while current_node.next!=nil
        current_node = current_node.next
      end
      
      # Adding an element to the last element of the LinkedList 
      node = Node.new data
      current_node.next = node
    end
  end

  def print_list
    current_node = self.first
    while current_node != nil
      current_node.print_data
      current_node = current_node.next
    end
  end

  def reverse
    if self.first == nil
      return nil
    else
      loop_node    = nil
      current_node = self.first
      next_node    = current_node.next
      while next_node != nil
        current_node.next = loop_node
        loop_node         = current_node
        current_node      = next_node
        next_node         = next_node.next
      end
      current_node.next = loop_node 
      self.first        = current_node
    end
  end

  def nth_from_last(n)
    if self.first == nil
      puts "Not possible to extract #{n}th element from last"
      return nil
    else
      # boolean flag to instruct the second loop node to start traversing
      traverse = false

      # counter variable to count the number of nodes traversed starting from first position in LL
      node_counter = 0

      loop_node_1 = self.first
      loop_node_2 = self.first

      # keep traversing till the first loop node reached the end of LL
      while loop_node_1.next != nil
        node_counter = node_counter+1
        if node_counter == n
          # start moving the second loop node 
          traverse = true
        end
        loop_node_1 = loop_node_1.next
        if traverse
          loop_node_2 = loop_node_2.next
        end
      end

      if traverse
        loop_node_2.data
      else
        puts "Not possible to extract #{n}th element from last"
        nil
      end
    end
  end

end



















