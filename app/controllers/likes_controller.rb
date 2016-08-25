class LikesController < ApplicationController

  def create
    # make sure the user hasnt already liked this style
    if logged_in?
      like = Like.find_by({user_id: current_user.id, style_id: params[:style_id]})

      if like == nil then
          like = Like.new
          like.style_id = params[:style_id]
          like.user_id = current_user.id
          like.save
      end
    end
      like_count = Style.find(params[:style_id]).likes.count
      render json:{like_count: like_count}
  end

end
