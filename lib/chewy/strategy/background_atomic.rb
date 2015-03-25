module Chewy
  class Strategy
    class BackgroundAtomic < BackgroundBase
      def initialize
        @stash = {}
      end

      def update(type, objects, options = {})
        @stash[type] ||= []
        @stash[type] |= type.adapter.identify(objects)
      end

      def leave
        @stash.all? do |type, ids|
          enqueue(type, ids)
        end
      end
    end
  end
end
