class PartnershipsController < ApplicationController


  def new
    @partnership = current_user.build_partnership(user_one: current_user)
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
      redirect_to root flash[:notice] = "You've successfully linked to #{user_two.email}!"
    else
      flash[:alert] = 'There is no user associated with that email address!'
      render :new
    end
  end

end
