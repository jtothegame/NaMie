class PartnershipsController < ApplicationController
before_action :authenticate_user!

  def new
    if current_user.partnership
      @partnership = current_user.partnership
      render :show
    else
      @partnership = current_user.build_partnership(user_one: current_user)
    end
  end

  def create
    @partnership = current_user.build_partnership(user_one: current_user)
    email = params[:partnership][:user_two_email]
    user = User.where(email: email).first
    if user
      @partnership.user_two = user
      user.partnership = @partnership
      user.save!
      @partnership.save!
      current_user.save!
      redirect_to root_path flash[:notice] = "You've successfully linked to #{@partnership.user_two_email}!"
    else
      flash[:alert] = 'There is no user associated with that email address!'
      render :new
    end
  end

end
