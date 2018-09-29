module Api 
  class SongsController < ActionController::API

    def mk_list(field)
      @songs = Song.order(field)
      @songs.pluck(field)
    end

    # GET /songs/list
    def list 
      @songs = Song.order(:released_dates)
      @titles = @songs.pluck(:titles)
      render json: @titles.uniq
    end

    # GET /songs/:songtitle
    def show 
      @songs = Song.where(titles: params[:songtitle])

      render json: @songs
    end

    # GET /songs/search/:keyword
    def search
      words = params[:keyword].split
      @keywords = ""
      words.each{|word|@keywords += "(?=.*#{word})"}
      @songs = Song.where('titles REGEXP :keywords',keywords: @keywords)
    
      render json: @songs
    end

    # GET /lyrists/list
    def lyrists 
      @lyrists = mk_list(:lyrists)
      render json: @lyrists.uniq
    end

    #GET /lyrists/:lyrist
    def lyrist_show 
      @songs = Song.where(lyrists: params[:lyrist])

      render json: @songs
    end

    # GET /composers/list
    def composers 
      @composers = mk_list(:composers)
      render json: @composers.uniq
    end

    #GET /composers/:composer
    def composer_show 
      @songs = Song.where(composers: params[:composer])

      render json: @songs
    end

    # GET /arrangers/list
    def arrangers 
      @arrangers = mk_list(:arrangers)
      render json: @arrangers.uniq
    end

    #GET /arrangers/:arranger
    def arranger_show 
      @songs = Song.where(arrangers: params[:arranger])

      render json: @songs
    end

  end
end
