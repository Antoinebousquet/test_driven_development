require_relative '../lib/caesar_cipher.rb'

describe "the check method" do
  it "should return TRUE when entry data are good" do
    expect(check("Test", 4)).to eq(true)
  end

  it "should return FALSE when entry data are not good" do
    expect(check(4, 5)).to eq(false)
    expect(check("Test", "Retest")).to eq(false)
    expect(check("Test")).to eq(false)
    expect(check("Test", 5, 6)).to eq(false)
    expect(check("", 5)).to eq(false)
    expect(check("", -3)).to eq(false)
    expect(check("", 5.0)).to eq(false)        
  end
end

describe "the caesar_cipher method" do
	it "should return the ciphered text" do
    expect(caesar_cipher("this is a test", 3)).to eq("wklv lv d  whvw")
    expect(caesar_cipher("This is a test", 3)).to eq("Wklv lv d whvw")
    expect(caesar_cipher("This is a test", 0)).to eq("This is a test")
    expect(caesar_cipher("This is a test", 28)).to eq("Vjku ku c vguv")
    expect(caesar_cipher(" This is a test", 3)).to eq(" Wklv lv d whvw")
    expect(caesar_cipher(" This is a  test", 3)).to eq(" Wklv lv d  whvw")
    expect(caesar_cipher("This is a test !", 3)).to eq(" Wklv lv d  whvw !")
	end
end