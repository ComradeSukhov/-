require 'rspec'
require_relative '../Binary_Tree_Unique'
describe 'clear' do

  it 'should return empty array' do

    bst = BinaryTreeUnique.new
    array = Array.new(10_000) { rand(-500_000..500_000) }
    array.each { |num| bst.store_number(num) }
    bst.clear

    expect(bst.show_in_order).to eq([])
  end

end
