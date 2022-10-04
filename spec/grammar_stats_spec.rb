require 'grammar_stats'

RSpec.describe GrammarStats do
    context "when there is a text" do
        it "returns true if the given text starts with a capital letter and ends with with a suitable sentence-ending punctuation mark" do
            correct_text = GrammarStats.new
            result_c = correct_text.check("Hello, my name is Dogancan.")
            expect(result_c).to eq true
        end
        it "returns false if the text doesn't start with a capital letter." do
            small_capital_text = GrammarStats.new
            result_s = small_capital_text.check("hello, my name is Dogancan.")
            expect(result_s).to eq false
        end
        it "returns false if the text doesn't end with a a suitable sentence-ending punctuation mark." do
            wrong_mark_text = GrammarStats.new
            result_w = wrong_mark_text.check("Hello, my name is Dogancan-")
            expect(result_w).to eq false
        end
        it "returns the percentage of passing texts as an integer" do 
            percentage = GrammarStats.new
            percentage.check("Hello, my name is Dogancan.")
            percentage.check("Hello, my name is Dogancan-")
            percentage.check("Hello, my name is Dogancan!")
            expect(percentage.percentage_good).to eq 66
        end
    end
    context "when there isn't a text" do
        it "fails" do
            error = GrammarStats.new
            expect { error.check("") }.to raise_error "No text to be checked!"
        end
    end
end
        