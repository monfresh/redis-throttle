require 'rubygems'
require 'sinatra'
require 'rack/redis_throttle'

module Rack
  module Test
    class FakeApp < Sinatra::Base

      use Rack::RedisThrottle::Daily, max: 5000

      get '/' do
        'Hello Redis Throttler!'
      end

    end
  end
end
