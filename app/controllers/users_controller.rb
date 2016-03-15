class UsersController < ApplicationController
  def index
    @user = User.create
  end

  def create
    @user = User.new(user_params)

    @user.save
    redirects_to "users/:id"
  end

  def show
    @user = User.id
  end

  private

  def user_params
    params.require(:user).permit(:fname, :avatar)
  end
end
