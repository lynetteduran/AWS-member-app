class UsersController < ApplicationController

  def index
    @users= User.all
  end


  def create
    @user = User.create( user_params )

    if @user.valid?
      redirect_to users_path
    else
      redirect_to :root
    end
  end


  private

  def user_params
  params.require(:user).permit(:avatar,:name)
end
end
