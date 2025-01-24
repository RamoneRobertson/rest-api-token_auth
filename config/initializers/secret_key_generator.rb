# Generate a random secret key
secret_key = SecureRandom.hex(32)

# Set secret key as an environment variable
ENV["APP_SECRET_KEY"] =  secret_key
