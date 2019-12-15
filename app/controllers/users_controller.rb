class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :destroy, :follow, :unfollow]

  def index
    @users = User.where.not(id: current_user.id)
  end

  def follow
    if current_user.follow(@user.id)
      respond_to do |format|
        format.html { redirect_to users_path }
        format.js
      end
    end
  end

  def unfollow
    if current_user.unfollow(@user.id)
      respond_to do |format|
        format.html { redirect_to users_path }
        format.js { render action: :follow }
      end
    end
  end


  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :name, :surname, :nickname, :mobility, :age, :city, :photo, instrument_ids:[], genre_ids: [], ability_ids: [], band_projects:[], category_ids:[])
  end
end

