# frozen_string_literal: true

class FrequentQuestionAbility < Ability
  def donor
    can :read, FrequentQuestion
  end
end
