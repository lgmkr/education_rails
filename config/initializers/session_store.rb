# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_railscasts_session',
  :secret      => 'b9895251999e27fe6c874e44c57ba04df0bbd93be3690acf51546562f92fb51ccacc5a507914cb304e883386051da45a117050441cb3c91f8ae1ab5c03f9dc3f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
