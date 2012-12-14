class CreatePatients < ActiveRecord::Migration
  
  def self.connection
    #ActiveRecord::Base.establish_connection("quiz_#{Rails.env}").connection
    Patient.connection
  end
  
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :mobile

      t.timestamps
    end
  end
end
