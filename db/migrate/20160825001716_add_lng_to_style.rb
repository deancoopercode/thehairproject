class AddLngToStyle < ActiveRecord::Migration[5.0]
  def change
    add_column :styles, :lng, :string
  end
end
