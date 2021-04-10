class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user

  def show
    @marks = @user.marks.all
    @galleries = @user.galleries.all
  end

  def edit
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :profile_image)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
