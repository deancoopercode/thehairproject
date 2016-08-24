class StylesController < ApplicationController

# get /styles
  def index
    @styles = Style.all
  end
# post /styles
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

  # get /styles/ID
  def show
    @style = Style.find(params[:id])

    # show the correct view for viewing a single style, and also a form for changing the details
  end


  # patch/put /styles/ID
  def update
    # change database and reroute the user
  end


  # delete /styles/ID
  def destroy
  end






end
