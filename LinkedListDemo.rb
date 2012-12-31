require './LinkedList'

# Forming a new LinkedList
linked_list = LinkedList.new

# Adding elements to the LinkedList
linked_list.add_last(10)
linked_list.add_last(20)
linked_list.add_last(30)
linked_list.add_last(40)
linked_list.add_last(50)
linked_list.add_last(60)

# Printing all the elements of current LinkedList
puts "Linked list is "
linked_list.print_list

# Reversing the LinkedList, this operation overwrites the original LinkedList
linked_list.reverse!
puts ""
puts "After reversing, Linked list is "
linked_list.print_list
puts ""

# Extracting nth element from the last in the LinkedList
puts "Enter which element from last need to be extracted"
nth = Integer(gets().strip)
puts "#{nth} from last #{linked_list.nth_from_last nth}"
