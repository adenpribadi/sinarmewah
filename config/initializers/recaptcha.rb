Recaptcha.configure do |config|
	if Rails.env.production?
	  # production
	  config.site_key   = '6LeK9cYUAAAAAGbuH6RDa_2OEOfVrDS-PXRTHU81'
	  config.secret_key = '6LeK9cYUAAAAAE9cx2UjdNxFfa1tDo9LNRgtqCPM'
	else
		# development
		config.site_key   = '6Leq9sUUAAAAAHvYDpSBsT63bDfbtF8PiZYHokoP'
	 	config.secret_key = '6Leq9sUUAAAAAD_rEwTiLl0oj8DBt-xL-rYdo_dH'
	end
  # Uncomment the following line if you are using a proxy server:
  # config.proxy = 'http://myproxy.com.au:8080'
end
