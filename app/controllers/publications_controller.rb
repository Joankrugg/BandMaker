class PublicationsController < ApplicationController
  before_action :set_pub, only: [:edit, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @publications = Publication.all
  end

  def new
    @user = current_user
    @publication = Publication.new
  end

  def create
    @user = current_user
    @publication = @user.publications.new(publication_params)
    @publication.user = @user
    if
      @publication.save
      redirect_to publications_path
    else
      render new
    end
  end

  def edit
  end

  def update
    if @publication.update(publication_params)
      redirect_to @publication
    else
      render :edit
    end
  end

  def destroy
    @publication.destroy
    redirect_to publications_path
  end

  private

  def set_pub
    @publication = Publication.find(params[:id])
  end

  def publication_params
    params.require(:publication).permit(:photo, :comment, :artist_id)
  end
end
