# frozen_string_literal: true

require_relative '../bubble_sort'

describe '#bubble_sort' do
  let(:unsorted) { (1..10).to_a.reverse! }

  it 'sorts an array of numbers in increasing order' do
    expect(bubble_sort(unsorted)).to eq unsorted.sort
  end
end

describe '#bubble_sort_by' do
  let(:unsorted) { %w[hi hello hey] }

  it 'sorts an array by accepting a block' do
    expect(bubble_sort_by(unsorted) { |left, right| left.length - right.length }).to eq %w[hi hey hello]
  end

  it 'raises an error if block is not given' do
    expect { bubble_sort_by(unsorted) }.to raise_error(LocalJumpError)
  end
end
