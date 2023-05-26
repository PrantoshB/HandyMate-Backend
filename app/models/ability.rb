# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    # can :read, :all
    if user.role == 'admin'
      can :manage, :all
    else
      can :read, :all
      can :create, Reservation
      can :destroy, Reservation, user_id: user.id
    end
  end
end
