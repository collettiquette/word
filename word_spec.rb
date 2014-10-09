$LOAD_PATH << File.dirname(__FILE__)

require 'rspec'
require 'word.rb'

describe Word do
  describe ".suffix" do

    it "should take 'absoluteness' and return 'ness'" do
      expect(described_class.suffix("absoluteness")).to eq("ness")
    end

    it "should take 'absolutely' and return 'ly'" do
      expect(described_class.suffix("absolutely")).to eq("ly")
    end

    it "should take 'reversible' and return 'ible'" do
      expect(described_class.suffix("reversible")).to eq("ible")
    end
  end

  describe ".root" do
    it "should take 'absoluteness' and return 'absolute'" do
      expect(described_class.root("absoluteness")).to eq("absolute")
    end

    it "should take 'absolutely' and return 'absolute'" do
      expect(described_class.root("absolutely")).to eq("absolute")
    end

    it "should take 'reversible' and return 'reverse'" do
      expect(described_class.root("reversible")).to eq("reverse")
    end

  end

end
