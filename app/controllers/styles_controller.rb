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
    @style.user_id = current_user.id

    if @style.save
      redirect_to "/styles/#{@style.id}"   #redirect go to routes
    else
      render :index           #erb display a template
    end

  end

  # get /styles/ID
  def show
    @style = Style.find(params[:id])
    @comments = Comment.all
    # show the correct view for viewing a single style, and also a form for changing the details
  end

  def edit
    @style = Style.find(params[:id])
  end


  # patch/put /styles/ID
  def update
    @style = Style.find(params[:id])
    @style.update(studioname: params[:studioname], studiowebsiteurl: params[:studiowebsiteurl], hairdressername: params[:hairdressername], hairpicfront: params[:hairpicfront], hairpicback: params[:hairpicback], hairpicside: params[:hairpicside], price: params[:price], rating: params[:rating], tag: params[:tag])
    @style.save
    redirect_to '/styles/'+params[:id]
    # change database and reroute the user
  end


  # delete /styles/ID
  def destroy
    @style = Style.find(params[:id])
    @style.likes.destroy_all
    @style.comments.destroy_all
    @style.destroy
    redirect_to '/styles'
  end






end
