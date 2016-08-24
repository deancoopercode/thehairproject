class CommentsController < ApplicationController


  def create
    comment = Comment.new
    comment.text = params[:newCommentText]
    comment.style_id = params[:style_id]
    comment.user_id = current_user.id
    comment.save
    redirect_to "/styles/#{params[:style_id]}"
  end

  def destroy
    commentToDelete = Comment.find(params[:id])
    commentToDelete.destroy
    redirect_to "/styles/#{params[:style_id]}"
  end

end
