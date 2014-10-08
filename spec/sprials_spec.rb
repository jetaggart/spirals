require "spec_helper"


describe Spirals do
  describe "#generate" do
    it "does nothing for no width" do
      pattern = Spirals.new(0, 0).generate

      expect(pattern).to match_array([])
    end

    it "returns only the number for width of 1" do
      pattern = Spirals.new(0, 1).generate

      expect(pattern).to match_array([[0]])

      pattern = Spirals.new(1, 1).generate

      expect(pattern).to match_array([[1]])
    end

    it "returns a 2x2 with width 2" do
      pattern = Spirals.new(1, 2).generate

      expect(pattern).to match_array([[1, 2],
                                      [4, 3]])
    end

    it "returns a 4x4 with width 4" do
      pattern = Spirals.new(1, 4).generate

      expect(pattern).to match_array([[1,  2,  3,  4],
                                      [12, 13, 14, 5],
                                      [11, 16, 15, 6],
                                      [10, 9,  8,  7]])
    end
  end
end