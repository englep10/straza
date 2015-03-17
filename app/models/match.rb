class Match < ActiveRecord::Base
	belongs_to :guest, :host

end