# frozen_string_literal: true

class Rate < ActiveRecord::Base
	belongs_to :pair_from, class_name: 'Currency'
	belongs_to :pair_to, class_name: 'Currency'

	validates :pair_from, presence: true
	validates :pair_to, presence: true
end
