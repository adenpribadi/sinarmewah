
	# # Change to match your CPU core count
	# workers 1

	# # Min and Max threads per worker
	# threads 1, 10

	# app_dir = File.expand_path("../..", __FILE__)
	# shared_dir = "#{app_dir}/tmp"

	# # Default to production
	# rails_env = ENV['RAILS_ENV'] || "production"
	# environment rails_env

	# # Set up socket location
	# bind "unix://#{shared_dir}/sockets/puma.sock"
	# #bind "tcp://0.0.0.0:3008"

	# # Logging
	# #stdout_redirect "#{shared_dir}/log/puma.stdout.log", "#{shared_dir}/log/puma.stderr.log", true
	# stdout_redirect "#{app_dir}/log/puma.stdout.log", "#{app_dir}/log/puma.stderr.log", true

	# # Set master PID and state locations
	# pidfile "#{shared_dir}/pids/puma.pid"
	# state_path "#{shared_dir}/pids/puma.state"
	# activate_control_app

	# on_worker_boot do
	#   require "active_record"
	#   ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
	#   ActiveRecord::Base.establish_connection(YAML.load_file("#{app_dir}/config/database.yml")[rails_env])
	# end


	threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }.to_i
	threads threads_count, threads_count

	port        ENV.fetch("PORT") { 3000 }

	environment ENV.fetch("RAILS_ENV") { "development" }
	plugin :tmp_restart

