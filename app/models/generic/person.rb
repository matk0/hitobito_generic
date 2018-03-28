module Generic
  module Person
    extend ActiveSupport::Concern

    included do
      alias_method_chain :person_name, :title
    end

    def person_name_with_title(format = :default)
      "#{title} #{person_name_without_title(format)}".strip
    end
  end
end
