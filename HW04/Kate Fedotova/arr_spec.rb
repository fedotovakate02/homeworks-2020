require 'rspec'
require_relative 'arr.rb'

describe 'my_each' do
  let(:arr) { [1, 2, 3, 4] }

  it 'has block' do
    new_arr = []
    arr.my_select { |el| new_arr << el }
    expect(new_arr).to eq([1, 2, 3, 4])
  end

  it 'without block' do
    expect(arr.my_each).to be_an_instance_of(Array)
  end
end

describe 'my_map' do
  let(:arr) { [1, 2, 3, 4] }

  it 'has block' do
    expect(arr.my_map { |el| el + 1 }).to eq([2, 3, 4, 5])
  end

  it 'without block' do
    expect(arr.my_select).to be_an_instance_of(Enumerator)
  end
end

describe 'my_select' do
  let(:arr) { [1, 2, 3, 4] }

  it 'has block' do
    expect(arr.my_select { |el| el >= 2 }).to eq([2, 3, 4])
  end

  it 'without block' do
    expect(arr.my_select).to be_an_instance_of(Enumerator)
  end
end
