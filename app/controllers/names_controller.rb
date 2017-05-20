class NamesController < ApplicationController
  before_action :authenticate_user!
  before_action :like_baby

  def index
    # @page = params[:page] || 1
    # @boys = Baby.where(gender: 'M').order(:name).page(@page).per(1)
    # @girls = Baby.where(gender: 'F').order(:name).page(@page).per(1)
  end

  def boy
    @page = params[:page] || 1
    @boys = Baby.where(gender: 'M').order(:name).page(@page).per(1)
  end

  def girl
    @page = params[:page] || 1
    @girls = Baby.where(gender: 'F').order(:name).page(@page).per(1)
  end

  private

  def like_baby
    if params[:like] == 'true'
      liked_name = LikedName.new
      liked_name.user_id = current_user.id
      liked_name.baby_id = params[:baby_id]
      liked_name.save
    end
  end
end
