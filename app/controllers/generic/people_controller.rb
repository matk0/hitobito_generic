module Generic
  module PeopleController
    extend ActiveSupport::Concern
    included do
      self.permitted_attrs += [:title, :salutation]
    end
  end
end
