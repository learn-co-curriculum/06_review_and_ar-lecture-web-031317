class Appearance
  attr_reader :film, :character

  ALL = []

  def self.all
    ALL
  end

  def initialize(film, character)
    @character = character
    @film = film
    ALL << self
  end
end
