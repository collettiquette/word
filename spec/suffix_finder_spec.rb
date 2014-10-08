describe Word do
  describe ".suffix" do

    it "should take 'absoluteness' and return 'ness'" do
      expect(described_class.suffix("absoluteness")).to eq("ness")
    end

    it "should take 'absolutely' and return 'ly'" do
      expect(described_class.suffix("absolutely")).to eq("ly")
    end

  end

  describe ".root" do
    it "should take 'absoluteness' and return 'absolute'" do
      expect(described_class.suffix("absoluteness")).to eq("absolute")
    end

    it "should take 'absolutely' and return 'absolute'" do
      expect(described_class.suffix("absolutenely")).to eq("absolute")
    end

  end

end
