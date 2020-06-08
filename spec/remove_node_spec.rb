require 'rspec'
require_relative '../Binary_Tree_Simple'

describe 'remove_node' do

  before(:each) do
    @bst = Node.new
  end

  it 'should pass simple tests' do
    expect(@bst.remove_node(32)).to eq(false)
  end

  it 'should pass simple tests' do
    @bst.store_number(32)
    expect(@bst.remove_node(32)).to eq(true)
    expect(@bst.show_in_order).to eq([])
  end

  it 'should pass simple tests' do
    @bst.store_array([1,6,3,8,13,12])
    @bst.remove_node(8)
    expect(@bst.show_in_order).to eq([1,3,6,12,13])
  end

  it 'should pass random tests' do
    arr = Array.new(10_000) { |i| rand(-1_000_000..1_000_000) }
    @bst.store_array(arr)
    1_000.times do
      removed_item = arr.delete_at(arr.index(arr.sample))
      @bst.remove_node(removed_item)
    end
    expect(@bst.show_in_order).to eq(arr.sort)
    expect(@bst.tree_size).to eq(9_000)
  end

  it 'should pass random tests' do
    arr = Array.new(10_000) { |i| rand(-1_000..1_000) }
    @bst.store_array(arr)
    1_000.times do
      removed_item = arr.delete_at(arr.index(arr.sample))
      @bst.remove_node(removed_item)
    end
    expect(@bst.show_in_order).to eq(arr.sort)
    expect(@bst.tree_size).to eq(9_000)
  end

end
