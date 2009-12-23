# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_acisai_session',
  :secret      => '0bd46a86005c71c88bb681cb5837b52ad14e0bc18291dc990f8e7dba895b871bbed300c7ffa72c76e56aaa1ce71ba47235a0f6bf2ac4ff7564d9fdde322c966c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
