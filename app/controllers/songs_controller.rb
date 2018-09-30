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

  # GET /songs/:songtitle
  def artist_view 
    @artist = params[:name]
    case params[:type]
    when "lyrists"
      @songs = Song.where(lyrists: @artist)
      @type = "作詞"
    when "singers"
      @songs = Song.where(singers: @artist)
      @type = "名義"
    when "composers"
      @songs = Song.where(composers: @artist)
      @type = "作曲"
    when "arrangers"
      @songs = Song.where(arrangers: @artist)
      @type = "編曲"
    end
    render "artists/artist_data"
  end

  # POST /songs/search !not REST
  def search
    if params[:keywords]
      words = params[:keywords].split
      @keywords = ""
      words.each{|word|@keywords += "(?=.*#{word})"}
      @search = Song.where('titles REGEXP :keywords' ,keywords: @keywords)
    else
      @search = []
    end
      render 'layouts/index'
  end

end
