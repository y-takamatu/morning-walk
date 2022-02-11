class UsersController < ApplicationController
  def show
    

    @user = User.find(params[:id])
    @this_month =@user.walks.group("MONTH(start_time)")

    @walks = @user.walks
  end
end
