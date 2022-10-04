require 'track_list'

RSpec.describe Track_List do
    context "when there is a song" do
        it "adds the given track to the list" do
            track = Track_List.new
            result = track.add("Metallica - Nothing Else Matters")
            expect(result).to eq ["Metallica - Nothing Else Matters"]
        end
        it "shows the list" do
            track = Track_List.new
            track.add("Metallica - Nothing Else Matters")
            track.add("Hans Zimmer - Cornfields")
            expect(track.show()).to eq ["Metallica - Nothing Else Matters", "Hans Zimmer - Cornfields"]
        end
        it "identifies if the track is already on the list" do
            track = Track_List.new
            track.add("Metallica - Nothing Else Matters")
            result = track.add("Metallica - Nothing Else Matters")
            expect(result).to eq "This song is already on the list"
        end
    end
    context "when there isn't a song" do
        it "fails when there isn't a song" do
            error = Track_List.new
            expect{ error.add("") }.to raise_error "No song to be added"
        end
    end
end