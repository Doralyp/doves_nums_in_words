require_relative '../nums_in_words'

describe "numbers in words" do
  it "should return exceptional english words" do
    WEIRD.each do |num, word|
      expect(nums_in_words(num)).to eq(word)
    end
  end

  it "should handle compound words" do
    expect(nums_in_words(73)).to eq("seventy three")
  end
end