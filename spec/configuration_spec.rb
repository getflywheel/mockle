require 'spec_helper'

describe Mockle::Configuration, '#fixture_path' do
  let!(:new_fixture_path) { '/custom/fixture/path' }
  let!(:previous_fixture_path) { Mockle.fixture_path }

  before do
    Mockle.configure do |config|
      config.fixture_path = new_fixture_path
    end
  end

  after do
    Mockle.configure do |config|
      config.fixture_path = previous_fixture_path
    end
  end

  it 'returns the config fixture path' do
    expect(Mockle.fixture_path).to eq new_fixture_path
  end
end
