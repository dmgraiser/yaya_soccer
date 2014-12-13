class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.publisher?
      can :manage, :all
    elsif user.editor?
      can :manage, Article
    else
      can :read, :all
    end
  end
end
