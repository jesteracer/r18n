# encoding: utf-8
require 'pp'

ENV['RACK_ENV'] = 'test'
require File.join(File.dirname(__FILE__), 'app/app')

require 'rack/test'

module RSpecMixinExample
  include Rack::Test::Methods
  def app(); Sinatra::Application; end
end

RSpec.configure { |c| c.include RSpecMixinExample }

set :environment, :test
set :root, File.join(File.dirname(__FILE__), 'app')
