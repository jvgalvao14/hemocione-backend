# frozen_string_literal: true

class Institution < ApplicationRecord
    has_many :institution_addresses

    before_validation :set_cnpj_correctly

    validates :legal_name, presence: true
    validates :cnpj, presence: true
    validate :cnpj_must_be_valid

    def cnpj_must_be_valid
        errors.add(:cnpj, "is not valid") unless CNPJ.valid?(cnpj)
    end

    def set_cnpj_correctly
        self.cnpj = self.cnpj.gsub(/[^\d]/,"")
    end
end