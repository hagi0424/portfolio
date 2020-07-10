class UsersController < ApplicationController
before_action :authenticate_user!
  def index
    #ログインユーザー以外のすべてのユーザーを表示
    @users = User.where.not(id: current_user.id)
  end

  def show
	@user = User.find_by(id: params[:id])
  end
end
