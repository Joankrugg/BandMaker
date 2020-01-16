class ApplyingsController < ApplicationController
  before_action :set_appling, only: [:destroy]
  def new
    @applying = Applying.new
  end

  def create
    @applying = current_user.applyings.new(applying_params)
    @band_project = @applying.band_project
    @user = @applying.user
    if @applying.save
      render 'band_projects/show'
    else
      redirect_to current_user
    end
  end

  def destroy
    @applying.destroy
    render 'band_projects/show'
  end

  private

  def applying_params
    params.require(:applying).permit(:band_project_id, :message)
  end

  def set_applying
    @applying = Applying.find(params[:id])
  end
end
