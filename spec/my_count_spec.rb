# frozen_string_literal: true

require_relative '../lib/my_enumerables'

RSpec.describe Enumerable do
  subject(:enumerable) { [1, 1, 2, 3, 5, 8, 13, 21, 34] }

  describe '#my_count' do
    context 'when not given a block' do
      it 'returns the size of the enumerable' do
        expect(enumerable.my_count).to eq enumerable.size
      end
    end

    context 'when given a block' do
      it 'returns the count of the elements that satisfy the condition' do
        expect(enumerable.my_count { |value| value > 5 }).to eq 4
        expect(enumerable.my_count { |value| value <= 5 }).to eq 5
        expect(enumerable.my_count { |value| value == 5 }).to eq 1
      end
    end

    context 'when given an argument' do
      it 'returns the count of the elements that are equal to the argument' do
        expect(enumerable.my_count(1)).to eq 2
        expect(enumerable.my_count(13)).to eq 1
        expect(enumerable.my_count(66)).to eq 0
      end
    end
  end
end
