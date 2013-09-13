class AppearanceColour < ActiveRecord::Base
	has_many :wines
	has_many :appearance_colour_details
end
