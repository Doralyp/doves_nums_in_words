require_relative '../nums_in_words'

describe "tens power" do
  it "should return the right power of ten" do
    expect(tens_power(10765)).to eq(3)
    expect(tens_power(10_000_765)).to eq(6)
  end
end

describe "numbers in words" do
  it "should return exceptional english words" do
    WEIRD.each do |num, word|
      expect(nums_in_words(num)).to eq(word)
    end
  end

  it "should handle compound words" do
    expect(nums_in_words(73)).to eq("seventy three")
  end

  it "should handle three digit compound words" do
    expect(nums_in_words(217)).to eq("two hundred seventeen")
  end

  it "should handle a fucking huge number" do
    expect(nums_in_words(123_456_789_123)).to eq("one hundred twenty three billion four hundred fifty six million seven hundred eighty nine thousand one hundred twenty three")
  end
end