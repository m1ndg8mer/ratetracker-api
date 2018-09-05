# frozen_string_literal: true

class Currency < ActiveRecord::Base
	has_many :rates, foreign_key: :pair_from_id
	has_many :pairs, through: :rates, source: :pair_to

	validates :name, presence: true
end
