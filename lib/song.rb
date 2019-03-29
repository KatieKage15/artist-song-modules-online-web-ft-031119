require 'pry'

include Paramable
extend Memorable::ClassMethods
include Memorable::InstanceMethods

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
