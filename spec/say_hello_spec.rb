require 'say_hello'

RSpec.describe 'say_hello' do
    it "returns the intended string" do
        result = say_hello("kay")
        expect(result).to eq "hello kay"
    end
end