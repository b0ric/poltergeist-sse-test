class LiveController < ApplicationController
	include ActionController::Live

	def pulse
		response.headers["Content-Type"] = "text/event-stream"
		10.times do |n|
			response.stream.write "#{n}\n"
			sleep 10
		end
	rescue IOError
		logger.info "pulse down"
	ensure
		response.stream.close
	end

end