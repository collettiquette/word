class Word

  def self.suffix(word)
    new(word).suffix
  end

  def self.root(word)
    new(word).root
  end

  def initialize(word)
    @word = word
  end

  def suffix
  end

  def root
  end

end

