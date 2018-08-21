class CompanyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.profile.admin == true
  end

  def create?
    record.profile.admin == true
  end

  def update?
    record.profile.admin == true
  end
end
