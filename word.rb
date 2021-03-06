require 'yaml'

class Word
  attr_reader :suffix, :root

  SUFFIXES = YAML.load_file("suffixes.yml")

  def self.suffix(word)
    new(word).suffix
  end

  def self.root(word)
    new(word).root
  end

  def initialize(word)
    @word = word
    @suffix = find_suffix
    @root = find_root
  end

  private

  def find_suffix
    SUFFIXES.select { |s| @word.end_with?(s) }.first
  end

  def find_root
    @word.slice!(@suffix) 
    @word
  end

end

