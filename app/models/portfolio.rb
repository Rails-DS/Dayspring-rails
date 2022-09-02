class Portfolio < ApplicationRecord
	extend FriendlyId
  	friendly_id :title, use: :slugged

  	#Custom Query to get a specific item in blogs 
  	def self.angular
  		where(subtitle: 'Angular')
  	end

  	#Another method to make cutsom Query 
  	scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') } 

  	after_initialize :set_defaults

  	def set_defaults
  		self.main_image ||= "https://place-hold.it/600x400/666/fff"
  		self.thumb_image ||= "https://place-hold.it/350x200/666/fff"
  	end
end
