class Guest < ActiveRecord::Base
	belongs_to :movement
	has_many :matches, dependent: :destroy
end