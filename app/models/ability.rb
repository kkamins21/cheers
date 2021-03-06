class Ability  
  include CanCan::Ability  

alias_action :index, :show, :to => :read
alias_action :new, :to => :create
alias_action :edit, :to => :update

can :manage, Coctail  # has permissions to do anything to fortunes
can :manage, :all     # has permission to do anything to any mode

  def initialize(user)  
    user ||= User.new  

if user.role? :admin
  can :manage, :all
elsif user.role? :author
  can :read, Coctail
  can :create, Coctail
  can [:update, :destroy], Coctail :user_id => user.id
elsif user.role? :moderator
  can :read, Coctail
  can [:update, :destroy], Coctail
else
  can :read, Coctail
    end
  end  
end  

