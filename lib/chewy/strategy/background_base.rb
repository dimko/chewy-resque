module Chewy
  class Strategy
    class BackgroundBase < Base
      def enqueue(type, ids)
        unless ids.empty?
          ::Resque.enqueue Chewy::Resque::Worker, type.derived_name, ids
        end
      end
    end
  end
end
