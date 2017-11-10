# $LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require 'mockle'
require 'pry'
require 'rspec'
require 'acme-client'
require 'rack/test'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before :each do
    Mockle.stub_lets_encrypt
  end

  config.order = 'random'
end
