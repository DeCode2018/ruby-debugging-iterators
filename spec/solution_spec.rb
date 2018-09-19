require_relative '../solution.rb'

describe 'ruby iterators' do

  let(:numbers) {[1,2,3,4,5,6,7,8,9,10]}

  describe '#squared_numbers' do

    it 'return an array of each number quared' do
      expect(squared_numbers(numbers)).to eq([1,4,9,16,25,36,49,64,81,100])
    end

    it 'does not change the original array' do
      squared_numbers(numbers)
      expect(numbers).to eq([1,2,3,4,5,6,7,8,9,10])
    end

  end

  describe '#even_numbers' do

    it 'returns an array of all even numbers' do
      expect(even_numbers(numbers)).to eq([2,4,6,8,10])
    end

    it 'does not change the original array' do
      even_numbers(numbers)
      expect(numbers).to eq([1,2,3,4,5,6,7,8,9,10])
    end

  end

  describe '#numbers_hash' do

    it 'returns a hash separating even and odd numbers' do
      expect(numbers_hash(numbers)).to eq({ :even => [2,4,6,8,10], :odd => [1,3,5,7,9]})
    end

    it 'does not change the original array' do
      numbers_hash(numbers)
      expect(numbers).to eq([1,2,3,4,5,6,7,8,9,10])
    end

  end

end
