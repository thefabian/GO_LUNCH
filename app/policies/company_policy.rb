class CompanyPolicy < ApplicationPolicy
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
