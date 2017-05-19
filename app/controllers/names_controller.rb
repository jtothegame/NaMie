class NamesController < ApplicationController
  before_action :authenticate_user!

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

end
