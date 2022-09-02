class Portfolio < ApplicationRecord
	has_many :technologies

	include Placeholder
	
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
  		self.main_image ||= Placeholder.image_generator(height:'600', width:'400')
  		self.thumb_image ||= Placeholder.image_generator(height:'350', width:'200')
  	end
end
