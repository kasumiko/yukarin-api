class Linker < ActionView::Helpers::UrlHelper 
  def self.mk_link obj, type
    case type
    when "titles"
      return link_to obj.titles ,'/songs/'+CGI.escape(obj.titles).gsub("+","%20")
    end
  end
end
