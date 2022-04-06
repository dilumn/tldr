# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user && user.admin_user?

    can :access, :rails_admin
    can :read, :dashboard

    send(user.role)
  end

  def super_admin
    can :manage, :all
  end

  def readonly_admin
    can :read, [Organization, ChangeRequest]
  end

  def operation_admin
    can [:read, :update], [Organization, ChangeRequest]
  end
end
