module Chewy
  class Type
    def self.derived_name
      name.underscore.sub!(/_index\/(#{type_name})\z/, '#\\1')
    end
  end
end
