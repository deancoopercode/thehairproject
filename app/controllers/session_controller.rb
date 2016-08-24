class SessionController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id

      redirect_to '/styles'
    else
        # render :new # stay at the login form
        # think about this for a bit
      redirect_to '/styles'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/styles'
  end

end
