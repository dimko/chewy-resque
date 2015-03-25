module Chewy
  module Resque
    class Worker

      @queue = :chewy

      def self.perform(index_name, ids)
        type = Chewy.derive_type(index_name)
        type.import(ids)
      end
    end
  end
end
