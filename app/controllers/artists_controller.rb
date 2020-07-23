class ArtistsController < ApplicationController
    before_action :set_artist, only: [:show]

    def index
        @artists = Artist.all 
    end
    
    def show
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params)
        if @artist.save
            redirect_to @artist
        else
            flash[:error_messages] = @artist.errors.full_messages
            redirect_to new_artist_path(@artist)
        end
    end



    private

    def set_artist
        @artist = Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :age, :title)
    end
end
