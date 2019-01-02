class CreateBodyMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :body_maps do |t|
      t.string :ref

      t.timestamps
    end
  end
end
