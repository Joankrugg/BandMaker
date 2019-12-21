class BandProjectsController < ApplicationController
  before_action :set_band_project, only: [:show, :edit, :destroy, :join]
  before_action :authenticate_user!, only: [:new, :create, :show, :edit, :update, :destroy, :join]
  def index
    @band_projects = BandProject.all
  end

  def new
    @user = current_user
    @band_project = BandProject.new
  end

  def create
    @band_project = current_user.band_projects.new(band_project_params)
    @band_project.user = current_user
    @band_project.user.boss = true
    if
      @band_project.save
      redirect_to band_projects_path
    else
      render new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @band_project.update(band_project_params)
      redirect_to @band_project
    else
      render :edit
    end
  end

  def destroy
    @band_project.destroy
    redirect_to band_projects_path
  end

  def join
    @band_project.users << current_user
    redirect_to @band_project.users.first
  end


  private

  def set_band_project
    @band_project = BandProject.find(params[:id])
  end

  def band_project_params
    params.require(:band_project).permit(:photo, :name, :city, :influence, :boss)
  end
end
