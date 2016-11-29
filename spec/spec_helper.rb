$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "mockle"

Dir[Pathname.new(File.expand_path("../spec/support", __FILE__)).join("**/*.rb")].each { |file| require file }
