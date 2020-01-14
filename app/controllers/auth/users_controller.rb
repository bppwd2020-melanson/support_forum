class Auth::UsersController < ApplicationController
  def index
    @users = User.order(email: :asc)
    @roles = Role.all
  end
  def update_roles
    @user = User.find(params[:id])
    puts "hello"
    @user.roles = []
    Role.all.each do |r|
      if (params[r.title])
        puts r.title + " has the value " + params[r.title]
      @user.roles << r
      end
    end
    redirect_to auth_users_index_path
  end

end
