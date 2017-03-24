class Character
  attr_reader :name

  ALL = []

  def self.all
    ALL
  end

  def initialize(name)
    @name = name
    ALL << self
  end

  def add_film(film)
    Appearance.new(film, self)
    films
  end

  def appearances
    Appearance.all.select {|appearance| appearance.character == self }
  end

  def films
    appearances.collect {|appearance| appearance.film }
  end

end
