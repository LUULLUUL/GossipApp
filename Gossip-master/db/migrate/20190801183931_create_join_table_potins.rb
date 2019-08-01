class CreateJoinTablePotins < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_potins do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :potin, index: true

      t.timestamps
    end
  end
end
