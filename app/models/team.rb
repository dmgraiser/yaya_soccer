class Team < ActiveRecord::Base

	has_many :players
	has_many :articles

end
