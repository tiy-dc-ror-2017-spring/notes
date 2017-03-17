require "active_record"

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.plural(/^(carafe)$/i, '\1s')
  inflect.singular(/^(carafe)s/i, '\1')
end

class Carafe < ActiveRecord::Base
  # self.table_name = "carafes"
  belongs_to :event
end
