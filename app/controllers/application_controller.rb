class ApplicationController < ActionController::Base

	#using concerns 	
	include DeviseWhitelist
	include SetSource
	
end
