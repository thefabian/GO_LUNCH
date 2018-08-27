class LunchPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.request_1.user == user ||
      record.request_2.user == user
  end
end
