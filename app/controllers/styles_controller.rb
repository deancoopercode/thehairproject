class StylesController < ApplicationController


  def index
    @styles = Style.all
  end

  def create

    @style = Style.new
    @style.studioname = params[:studioname]
    @style.studiowebsiteurl = params[:studiowebsiteurl]
    @style.hairdressername = params[:hairdressername]
    @style.hairpicfront = params[:hairpicfront]
    @style.hairpicback = params[:hairpicback]
    @style.hairpicside = params[:hairpicside]
    @style.price = params[:price]
    @style.rating = params[:rating]
    @style.tag = params[:tag]

    if @style.save
      redirect_to '/styles'   #redirect go to routes
    else
      render :index           #erb display a template
    end

  end




end
