require "spec_helper.rb"

describe "PigLatin" do
  it "exists" do
    expect(PigLatin).to be_a(Module)
  end

  it "has a translate method that takes a string and returns a string" do
    result = PigLatin.translate("Brady")
    expect(result).to be_a(String)
  end

  it "if a string starts with 'y' y is sent to the end of the word and appended with 'ay" do
    expect(PigLatin.translate("years")).to eq("earsyay")
    expect(PigLatin.translate("yellow")).to eq("ellowyay")
  end

  it "adds 'way' to the end of words beginning with vowels" do
    expect(PigLatin.translate("apple")).to eq("appleway")
    expect(PigLatin.translate("enter")).to eq ("enterway")
    expect(PigLatin.translate("otter")).to eq ("otterway")

  end

  it "removes consonant strings from the beginning of words and appends them to the end, followed by 'ay'" do
    expect(PigLatin.translate("brady")).to eq ("adybray")
    expect(PigLatin.translate("ghost")).to eq ("ostghay")
    expect(PigLatin.translate("chinese")).to eq ("inesechay")
  end



end
