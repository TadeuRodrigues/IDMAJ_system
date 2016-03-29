class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :firstname
      t.string :lastname
      t.string :CIN
      t.string :email

      t.timestamps null: false
    end
  end
end
