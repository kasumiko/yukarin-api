class SongsController < ApplicationController
  # GET /songs/list
  def list 
    @songs = Song.order(:released_dates)
    @titles = @songs.pluck(:titles)
    render "songs/songs_list"
  end


  # GET /songs/:songtitle
  def view 
    @songs = Song.where(titles: params[:songtitle])

    render "songs/song_data"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def song_params
      params.fetch(:song, {})
    end
end
