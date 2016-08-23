class RemoveTypeFromStyle < ActiveRecord::Migration[5.0]
  def change
    remove_column :styles, :type, :string
  end
end
