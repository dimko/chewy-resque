require "chewy"
require "resque"

require_relative "strategy/background_base"
require_relative "strategy/background_atomic"
require_relative "strategy/background_urgent"
require_relative "resque/version"
require_relative "resque/worker"

module Chewy
  module Resque
  end

  class Type
    def self.derived_name
      name.underscore.sub!(/_index\/(#{type_name})\z/, '#\\1')
    end
  end
end
