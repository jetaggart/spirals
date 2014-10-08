require "spec_helper"


describe Spirals do
  describe "#generate" do
    it "does nothing for no width" do
      pattern = Spirals.new(0, 0).generate

      expect(pattern).to match_array([])
    end

    it "returns only the number for width of 1" do
      pattern = Spirals.new(0, 1).generate

      expect(pattern).to match_array([0])

      pattern = Spirals.new(1, 1).generate

      expect(pattern).to match_array([1])
    end

  end
end