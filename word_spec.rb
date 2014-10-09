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

end
