class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    # ログインユーザーでないとき
    if @user != current_user
      redirect_to user_path(current_user.id)
    end
  end

  def update

  end

  def unsubscribe
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
