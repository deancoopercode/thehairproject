class RemoveUserIdFromStylesTable < ActiveRecord::Migration[5.0]
  def change
    remove_reference :styles, :style, foreign_key: true
  end
end
