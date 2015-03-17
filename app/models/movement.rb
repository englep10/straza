class Movement < ActiveRecord::Base
	has_many :guests, dependent: :destroy
	belongs_to :host
end
