# Write your solution here!

# install and require gem
require "dotenv/load"
require "http"
require "json"

# Set up the OpenAI API

# Pull in API key
api_key = ENV.fetch("OPENAI_API_KEY")

# Create hash for the header
header_hash = {
  "Authorization" => "Bearer #{api_key}",
  "content_type" => "application/json"
  }

# Create hash for the body



# Convert the body hash to JSON

# Make the API call

# Parse the response



# Print greeting and dashes

# Receive user input

# Send request to OpenAI

# Print the response and dashes


# Let the user keep typing inputs until they type "bye"


# Build up a history of the convo and send it with each request
