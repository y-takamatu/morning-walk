class UsersController < ApplicationController
  def show
    

    @user = User.find(params[:id])
    @this_month =@user.walks.group("MONTH(created_at)")

    @walks = @user.walks
  end
end
