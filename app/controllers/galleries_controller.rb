class GalleriesController < ApplicationController
before_action :authenticate_user!,except: [:index, :show]
before_action :set_gallery, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @galleries = Gallery.all
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)
    @gallery.user_id = current_user.id

    # youtube_urlへの保存
    url = params[:gallery][:youtube_url]
    url = url.last(11)
    @gallery.youtube_url = url

    if @gallery.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  def edit
    if @gallery.user == current_user
      render :edit
    else
      redirect_to gallery_path(@gallery)
    end
  end

  def update
    if @gallery.user == current_user
      @gallery.update(gallery_params)
      redirect_to gallery_path(@gallery.id)
    else
      render :edit
    end
  end

  def destroy
    @gallery.destroy
    redirect_to user_path(current_user.id)
  end



  private

  def set_gallery
    @gallery = Gallery.find(params[:id])
  end

  def gallery_params
    params.require(:gallery).permit(:title, :text, :image, :youtube_url, :region, :address, :latitude, :longitude)
  end

end
