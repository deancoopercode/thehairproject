class UsersController < ApplicationController


  def create

    @user = User.new
    @user.name = params[:name]
    @user.gender = params[:gender]
    @user.email = params[:email]
    @user.password = params[:password]

    if @user.save
      redirect_to '/styles'   #redirect go to routes
    else
      render :new           #erb display a template
    end

  end

end
