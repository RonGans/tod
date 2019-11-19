if Rails.version[0] > "4"
  require "active_model/type"
end
require "tod/time_of_day_type"

module Tod
  class Railtie < Rails::Railtie
    initializer "tod.register_active_model_type" do
      if Rails.version[0] > "4"
        #ActiveModel::Type.register(:time_only, Tod::TimeOfDayType)
      else
        #ActiveRecord::Type.register(:time_only, Tod::TimeOfDayType)
      end
    end
  end
end
