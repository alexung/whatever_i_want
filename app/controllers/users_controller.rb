class UsersController < RedController

  def index
    @users = User.all
  end

  def show
    @user = User.includes(:hobbies).find(params[:id])
    # User.includes.where(hobbies: {user_id: nil}) if i want to find all users that dont have hobbies
    @hobbies = @user.hobbies
  end
end
