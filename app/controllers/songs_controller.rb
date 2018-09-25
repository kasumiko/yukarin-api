class SongsController < ApplicationController

  # GET /songs/list
  def list 
    @songs = Song.all

    render json: @songs
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
