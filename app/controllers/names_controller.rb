class NamesController < ApplicationController
  before_action :authenticate_user!

  def index
    @boys = Baby.where(gender: 'M')
    @girls = Baby.where(gender: 'F')
  end
end
