# frozen_string_literal: true

class UserAddress < EntityAddress
    belongs_to :user
end