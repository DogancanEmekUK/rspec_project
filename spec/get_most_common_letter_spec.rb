require 'get_most_common_letter'

RSpec.describe 'get_most_common_letter' do
    it "returns the most common letter" do
        result = get_most_common_letter("the roof, the roof, the roof is on fire!")
        expect(result).to eq 'o'
    end
end