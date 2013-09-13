class Wine < ActiveRecord::Base
	belongs_to :user
	belongs_to :country
	belongs_to :appearance_colour
	belongs_to :appearance_clarity
	belongs_to :appearance_intensity
	belongs_to :nose_condition
	belongs_to :nose_development
	belongs_to :palate_sweetness
	belongs_to :palate_acidity
	belongs_to :palate_tannin
	belongs_to :palate_alcohol
	belongs_to :palate_body
	belongs_to :palate_flavintensity
	belongs_to :palate_finish
	belongs_to :conclusion_quality
	belongs_to :conclusion_readiness
	belongs_to :conclusion_price

	default_scope -> { order('created_at DESC') }
	validates :user_id, presence: true
	validates :name, presence: true
end