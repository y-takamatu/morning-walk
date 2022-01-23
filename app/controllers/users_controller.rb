class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @walks = @user.walks
  end
end
