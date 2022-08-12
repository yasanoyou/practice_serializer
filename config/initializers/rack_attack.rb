# frozen_string_literal: true

module Rack
  class Attack
    Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

    Rack::Attack.throttle('req/ip', limit: 5, period: 1.second, &:ip)

    Rack::Attack.throttled_response = lambda do |_env|
      # Using 503 because it may make attacker think that they have successfully
      # DOSed the site. Rack::Attack returns 429 for throttling by default
      [503, {}, ["Server Error\n"]]
    end
  end
end
