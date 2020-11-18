class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

    def show?
      return true
    end

    def create?
      true
    end

    def new?
      true
    end

    def update?
      record.user == user
    end

    def destroy?
      record.user == user
    end
end
