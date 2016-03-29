class CreateAgeOfStudents < ActiveRecord::Migration
  def change
    create_table :age_of_students do |t|
      t.string :age

      t.timestamps null: false
    end
  end
end
