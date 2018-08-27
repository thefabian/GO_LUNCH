class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

   def new?
    create?
  end

  def show?
    record.user == user
  end


end
