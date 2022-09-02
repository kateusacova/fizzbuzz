require 'fizzbuzz'
# describe 'fizzbuzz' do
#   it 'returns "fizz" when passed 3' do
#     expect(fizzbuzz(3)).to eq 'Fizz'
#   end
# end
describe 'fizzbuzz' do
  (1..100).select{ |num| num % 3 == 0 && num % 5 != 0}.each do |x|
    it "returns 'Fizz' for the number #{x}" do
      expect(fizzbuzz(x)).to eq 'Fizz'
    end
  end
    (1..100).select{ |num| num % 5 == 0 && num % 3 != 0}.each do |x|
    it "returns 'Buzz' for the number #{x}" do
      expect(fizzbuzz(x)).to eq 'Buzz'
    end
  end
    (1..100).select{ |num| num % 3 == 0 && num % 5 == 0}.each do |x|
    it "returns 'Fizzbuzz' for the number #{x}" do
      expect(fizzbuzz(x)).to eq 'Fizzbuzz'
    end
  end
    (1..100).select{ |num| num % 3 != 0 && num % 5 != 0}.each do |x|
    it "returns #{x} for the number #{x}" do
      expect(fizzbuzz(x)).to eq x
    end
  end
end