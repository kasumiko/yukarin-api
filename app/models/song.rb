class Song < ApplicationRecord

  def self.search(keyword)
    if keyword
      keyword.split
      @keywords = ""
      words.each{|word|@keywords += "(?=.*#{word})"}
      @search = where('titles REGEXP :keywords' ,keywords: @keywords)
    end
  end

end
