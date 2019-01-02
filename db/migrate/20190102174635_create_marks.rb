class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.string :context
      t.integer :left
      t.integer :top

      t.timestamps
    end
  end
end
