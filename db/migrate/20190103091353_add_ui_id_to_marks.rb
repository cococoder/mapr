class AddUiIdToMarks < ActiveRecord::Migration[5.2]
  def change
    add_column :marks, :uid, :string
  end
end
