class AddUserIdToStyles < ActiveRecord::Migration[5.0]
  def change
    add_reference :styles, :style, foreign_key: true
  end
end
