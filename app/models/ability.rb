class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.is_admin?
      # this gives the admin user super powers by enabling them to perform any action on any model.
      can :manage, :all
    end
    
  end
end
