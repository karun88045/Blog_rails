class CreateVisitors < ActiveRecord::Migration[7.0]
  def change
    create_table :visitors do |t|
      t.integer :count
      t.timestamps
    end
  end
end
