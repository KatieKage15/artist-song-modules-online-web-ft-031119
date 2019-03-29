require 'pry'

include Paramable
extend Memorable::ClassMethods
extend Findable::ClassMethods
include Memorable::InstanceMethods
include Paramable::InstanceMethods

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

#  def to_param
#    name.downcase.gsub(' ', '-')
#  end
end
