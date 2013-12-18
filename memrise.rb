require 'open-uri'
require 'nokogiri'
require 'beeminder'


class Memrise
  def initialize(username)
    @username=username
  end

  def items
    doc=Nokogiri::HTML(open("http://www.memrise.com/user/#{@username}"))
    doc.at_css(".ico-flower+ strong").content.strip
  end
end


token=ENV['BMNDR_TOKEN'] or raise "must define BMNDR_TOKEN!"
bee = Beeminder::User.new token
items = Memrise.new("mwotton").items
print items
bee.send "vietnamese", Float(items.gsub(/\D/,''))
