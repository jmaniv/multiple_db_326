class Visit < ActiveRecord::Base
  establish_connection "lab_#{Rails.env}"
  attr_accessible :description, :visit_date, :visit_time
  belongs_to :patient
  def self.table_name_prefix
    "lab."
  end
end
