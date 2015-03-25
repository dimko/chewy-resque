module Chewy
  class Strategy
    class BackgroundUrgent < BackgroundBase
      def update(type, objects, options = {})
        ids = type.adapter.identify(objects)
        enqueue(type, ids)
      end
    end
  end
end
