class Portfolio < ApplicationRecord
	extend FriendlyId
  	friendly_id :title, use: :slugged

  	# validates :title, :body, :main_image, :thumb_image, presence: true

  	#Custom Query to get a specific item in blogs 
  	def self.angular
  		where(subtitle: 'Angular')
  	end

  	#Another method to make cutsom Query 
  	scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') } 
end
