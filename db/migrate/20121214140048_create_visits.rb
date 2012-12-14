class CreateVisits < ActiveRecord::Migration
  def self.connection
    #ActiveRecord::Base.establish_connection("quiz_#{Rails.env}").connection
    Patient.connection
  end
  
  def change
    create_table :visits do |t|
      t.date :visit_date
      t.time :visit_time
      t.string :description
      t.references :patient

      t.timestamps
    end
    add_index :visits, :patient_id
  end
end
