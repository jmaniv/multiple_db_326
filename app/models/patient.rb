class Patient < ActiveRecord::Base
  establish_connection "development"
  attr_accessible :mobile, :name
  has_many :visits
  def self.table_name_prefix
    "main."
  end
end
