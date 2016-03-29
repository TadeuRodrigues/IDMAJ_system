class CreateStudentLevels < ActiveRecord::Migration
  def change
    create_table :student_levels do |t|
      t.string :level

      t.timestamps null: false
    end
  end
end
