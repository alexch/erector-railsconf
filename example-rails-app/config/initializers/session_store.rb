# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_example-rails-app_session',
  :secret      => '9ef8ac681764053794a92d40dff49bc508d7f794eaa53e70db0c0898372d0a5d16723fad35a4f74cc6e55711cf46584e8aa865aff98d28689061cdcfb80548cf'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
