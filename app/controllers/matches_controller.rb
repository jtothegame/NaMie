class MatchesController < ApplicationController
  before_action :authenticate_user!

  def index
    @boys = Baby.find_by_couple(*current_user.partnership.users).select { |baby| baby.gender == 'M' }
    @girls = Baby.find_by_couple(*current_user.partnership.users).select { |baby| baby.gender == 'F' }
  end
end
