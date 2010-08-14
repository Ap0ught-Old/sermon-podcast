# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sermon-podcast_session',
  :secret      => 'bcf50e01c91f645dcfd31959b1935ae3467fdc8c5e3690143c47f3218f3c6aa03722101416e472341247a85eb7f10fa7ef4b347638730ddcfc9f6ccae83e01fc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
