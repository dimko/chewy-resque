module Chewy
  class Strategy
    class BackgroundBase < Base
      def enqueue(type, ids)
        ::Resque.enqueue Chewy::Resque::Worker, type.derived_name, ids
      end
    end
  end
end
