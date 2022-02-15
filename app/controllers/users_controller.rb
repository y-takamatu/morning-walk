class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @walks = @user.walks
    @month_record = @walks.group("MONTH(start_time)")
  end
end
