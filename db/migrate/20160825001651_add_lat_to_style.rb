class AddLatToStyle < ActiveRecord::Migration[5.0]
  def change
    add_column :styles, :lat, :string
  end
end
