module Api 
  class SongsController < ActionController::API

    # GET /songs/list
    def list 
      @songs = Song.order(:released_dates)
      @titles = @songs.pluck(:titles)
      render json: @titles.uniq
    end


    def show 
      @songs = Song.where(titles: params[:songtitle])

      render json: @songs
    end
  end
end
