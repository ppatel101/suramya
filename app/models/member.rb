class Member < ApplicationRecord

	validates :flat, :name_in_english, :contact_no1, presence: true
	
	has_many :vehicles
	accepts_nested_attributes_for :vehicles, allow_destroy: true
	validates_associated :vehicles
end
