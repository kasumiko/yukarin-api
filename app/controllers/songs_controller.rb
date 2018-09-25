class SongsController < ActionController::Base

  # GET /songs/list
  def list 
    @songs = Song.all
    @titles = []
    @songs.each{|song| @titles << song[:titles]}
    render "songs/songs_list"
  end


  # GET /songs/:songtitle
  def view 
    @songs = []
    @songs << Song.find_by(titles: params[:songtitle])

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
