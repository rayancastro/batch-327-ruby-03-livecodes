require_relative '../acronymize.rb'

describe "#acronymize" do
  it "returns an empty string when given an empty string" do
    actual = acronymize("")
    expected = ""

    expect(actual).to eq(expected)
  end

  it "returns the acronomyzed letters for downcased sentences" do
    actual = acronymize("frequently asked questions")
    expected = "FAQ"

    expect(actual).to eq(expected)
  end

  it "returns the acronomyzed letters for upcased sentences" do
    actual = acronymize("AWAY FROM KEYBOARD")
    expected = "AFK"

    expect(actual).to eq(expected)
  end
end
