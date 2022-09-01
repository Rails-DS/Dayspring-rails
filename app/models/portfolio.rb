class Portfolio < ApplicationRecord
	extend FriendlyId
  	friendly_id :title, use: :slugged

  	#Custom Query to get a specific item in blogs 
  	def self.angular
  		where(subtitle: 'Angular')
  	end

  	scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') } 
end
