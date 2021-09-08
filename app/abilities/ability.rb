# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user || current_user

    @user.roles.each do |role|
      send(role.name.to_sym)
    end
  end

  def admin
    can :manage, :all
  end
end
