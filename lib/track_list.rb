class Track_List
    def initialize #Crete my array of track
        @track_list = []
    end
    def add(track) #Add the given track to the array
        fail "No song to be added" if track.empty?
        if (@track_list.include?(track))
            return "#{track} is already on the list"
        else 
            @track_list << track
            return show
        end
    end
    def show #Show the array of tracks
        return @track_list
    end
end