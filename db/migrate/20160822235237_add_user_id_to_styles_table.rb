class AddUserIdToStylesTable < ActiveRecord::Migration[5.0]
  def change
    add_reference :styles, :user, foreign_key: true
  end
end
