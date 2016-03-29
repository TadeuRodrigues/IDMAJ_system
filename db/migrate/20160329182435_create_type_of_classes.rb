class CreateTypeOfClasses < ActiveRecord::Migration
  def change
    create_table :type_of_classes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
