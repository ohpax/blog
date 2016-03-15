class Ability
  include CanCan::Ability

  def initialize(user)
 
      user ||= User.new # guest user (not logged in)
        can :read, Article
      if user.admin?
        can :manage, Article, :user_id => user.id
        can :manage, User
      else
      	can :manage, User, :id => user.id
      end
 
  end
end
