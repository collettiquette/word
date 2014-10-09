require 'yaml'

class Word
  SUFFIXES = YAML.load_file("suffixes.yml")

  def self.suffix(word)
    new(word).suffix
  end

  def initialize(word)
    @word = word
  end

  def suffix
    likely_suffix = ""
    SUFFIXES.each { |s| likely_suffix = s if @word.end_with?(s) }
    likely_suffix
  end

end
