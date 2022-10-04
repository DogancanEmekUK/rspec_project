require 'ciphertext'

RSpec.describe Ciphertext do
    it "encodes a given text" do
        code = Ciphertext.new
        result = code.encode("theswiftfoxjumpedoverthelazydog", "secretkey")
        expect(result).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
    end
    it "decodes a given text" do
        code = Ciphertext.new
        result = code.decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
        expect(result).to eq "theswiftfoxjumpedoverthelazydog"
    end
end