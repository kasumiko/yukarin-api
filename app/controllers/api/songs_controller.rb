module Api 
  class SongsController < ApplicationController

    # GET /songs/list
    def list 
      @songs = Song.all
      @titles = []
      @songs.each{|song| @titles << song[:titles]}
      render json: @titles.uniq
    end


    def show 
      @songs = Song.find_by(titles: params[:songtitle])

      render json: @songs
    end
  end
end
