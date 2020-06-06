require_relative 'BinaryTreeUnique'
require_relative 'Binary_Tree_Simple'

bst = Node.new

bst.add_node(23)
bst.add_node(3)
bst.add_node(2)

p bst.contains?(1)
