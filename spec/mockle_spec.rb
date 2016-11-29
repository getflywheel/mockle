require "spec_helper"

describe Mockle do
  it "has a version number" do
    expect(Mockle::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end

  it "does the thing" do
    example = ExampleLe.new(endpoint: "hi", private_key: "there")

    mock_le_successful_domain_validation!

    expect(example.authorize_for_domain).to eq(true)
  end
end
