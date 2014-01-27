# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pizzeria_session',
  :secret      => '935635bb80b08b9280a6e5ab9254e02dee0e8bdc3812791d4c3881d83f8572b092fa8eff08cd517192f40fc14950734505c5cb3cf48d5337ca32bd16f671f3f8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
