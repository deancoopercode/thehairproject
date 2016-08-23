class RemoveCommentIdFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_reference :comments, :comment, foreign_key: true
  end
end
