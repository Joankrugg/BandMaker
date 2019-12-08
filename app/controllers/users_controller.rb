class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :destroy]

  def show
    @user = current_user
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
    params.require(:user).permit(:email, :name, :surname, :nickname, :age, :city, :photo, instrument_ids:[])
  end
end

