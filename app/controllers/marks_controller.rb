class MarksController < ApplicationController
  before_action :set_gallery

  def create
    @mark = Mark.create(user_id: current_user.id, gallery_id: @gallery.id)
  end

  def destroy
    @mark =Mark.find_by(user_id: current_user.id, gallery_id: @gallery.id)
    @mark.destroy
  end

  private

  def set_gallery
    @gallery = Gallery.find(params[:gallery_id])
  end

end
