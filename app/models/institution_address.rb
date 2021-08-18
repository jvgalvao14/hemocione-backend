# frozen_string_literal: true

class InstitutionAddress < EntityAddress
    belongs_to :institution, foreign_key: :entity_id
end