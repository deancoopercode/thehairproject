class AddTagToStyle < ActiveRecord::Migration[5.0]
  def change
    add_column :styles, :tag, :string
  end
end
