class Film
  attr_reader :title

  ALL = []

  def self.all
    ALL
  end

  def initialize(title)
    @title = title
    ALL << self
  end

  def appearances
    Appearance.all.select { |appearance| appearance.film == self }
  end

  def characters
    # itearate over all of my appearances and return an array of all of those characters
    appearances.collect do |appearance|
      appearance.character
    end
  end

  def add_character(character) #create appearance
    Appearance.new(self, character)
    characters
  end
end
