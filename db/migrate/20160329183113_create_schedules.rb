class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :teacher, index: true, foreign_key: true
      t.references :type_of_class, index: true, foreign_key: true
      t.references :age_of_student, index: true, foreign_key: true
      t.time :time_in
      t.time :time_out

      t.timestamps null: false
    end
  end
end
