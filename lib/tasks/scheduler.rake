token=ENV['BMNDR_TOKEN'] or raise "must define BMNDR_TOKEN!"
bee = Beeminder::User.new token
items = Memrise.new("mwotton").items
print items
bee.send "vietnamese", Float(items.gsub(/\D/,''))
