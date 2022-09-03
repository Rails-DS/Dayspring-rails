class ApplicationController < ActionController::Base

	#using concerns 	
	

	include DeviseWhitelist
	
end
