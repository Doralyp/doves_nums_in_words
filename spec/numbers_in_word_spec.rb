require_relative '../nums_in_words'

describe "numbers in words" do
  it "should return exceptional english words" do
    WEIRD.each do |num, word|
      expect(nums_in_words(num)).to eq(word)
    end
  end

end