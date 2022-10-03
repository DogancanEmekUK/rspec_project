require 'grammar_improver'

RSpec.describe GrammarImprover do
    context "when there is a text" do
        it "returns true if the given text starts with a capital letter and ends with with a suitable sentence-ending punctuation mark" do
            correct_text = GrammarImprover.new
            result_c = correct_text.grammar_improver("Hello, my name is Dogancan.")
            expect(result_c).to eq true
        end
        it "returns false if the text doesn't start with a capital letter." do
            small_capital_text = GrammarImprover.new
            result_s = small_capital_text.grammar_improver("hello, my name is Dogancan.")
            expect(result_s).to eq false
        end
        it "returns false if the text doesn't end with a a suitable sentence-ending punctuation mark." do
            wrong_mark_text = GrammarImprover.new
            result_w = wrong_mark_text.grammar_improver("Hello, my name is Dogancan-")
            expect(result_w).to eq false
        end
    end
    context "when there isn't a text" do
        it "fails" do
            error = GrammarImprover.new
            expect { error.grammar_improver("") }.to raise_error "No text to be checked!"
        end
    end
end
