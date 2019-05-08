class Vehicle < ApplicationRecord

	enum vehicle_type: { two_wheel: 0, four_wheel: 1 }

	validates :number, :vehicle_type, presence: true
	belongs_to :member
end

