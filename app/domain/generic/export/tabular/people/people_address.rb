module Generic
  module Export
    module Tabular
      module People
        module PeopleAddress
          extend ActiveSupport::Concern

          included do
            alias_method_chain :person_attributes, :title
          end

          def person_attributes_with_title
            person_attributes_without_title + [:title, :salutation]
          end
        end
      end
    end
  end
end
