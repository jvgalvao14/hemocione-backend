# frozen_string_literal: true

class Institution < ApplicationRecord
    has_many :addresses, as: :addressable

    before_validation :set_cnpj_correctly

    validates :legal_name, :cnpj, presence: true
    validates :legal_name, :cnpj, uniqueness: true 
    validate :cnpj_must_be_valid

    def cnpj_must_be_valid
        errors.add(:cnpj, "cnpj inválido") unless CNPJ.valid?(self.cnpj)
    end

    private

    def set_cnpj_correctly
        self.cnpj = self.cnpj&.gsub(/[^\d]/,"")
    end
end