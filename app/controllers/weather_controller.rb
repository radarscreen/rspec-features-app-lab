class WeatherController < ApplicationController
	def index

	end

	def search
		#cookies[:zipcode] = params[:zipcode]
		zipcode = params[:zipcode]
		if zipcode == '94702'
			@sunny = true
		end
		if zipcode == '87111'
			@raining = true
		end
		# if zipcode == '96710'
		# 	@snowing = true
		# end
		#cookies[:zipcode] = params[:zipcode]
	end

end