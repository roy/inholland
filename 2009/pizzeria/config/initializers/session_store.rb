# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pizzeria_session',
  :secret      => '11a0cd469df36cb5548c035fdf94830e68e859bbe59c5015f87f30d5b18509257d2ea317b171c134f8f212a36b3867ce4238935f8a0fdad8f481f99138c36eae'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
