require "memorybee/version"
require 'memrise'

module Memorybee
  def poll

    token=ENV['BMNDR_TOKEN'] or
      raise "must define BMNDR_TOKEN!"
    memrise_user=ENV['MEMRISE_USER'] or
      raise "must define MEMRISE_USER!"
    goalname=ENV['BMNDR_GOALNAME'] or
      raise "must define BMNDR_GOALNAME!"

    bee = Beeminder::User.new token
    items = Memrise.new(memrise_user).items
    bee.send goalname, Float(items.gsub(/\D/,''))
  end
end
