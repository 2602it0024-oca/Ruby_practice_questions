class CreateMembers < ActiveRecord::Migration[8.1]
  def change
    create_table :members do |t|
      t.string :name, null: false
      t.float :height, null: false
      t.float :weight, null: false

      t.timestamps
    end
  end
end
