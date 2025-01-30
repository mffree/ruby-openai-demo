# Write your solution here!

# See Gemfile for gems used. I have run bundle install
require "dotenv/load"
require "http"
require "json"

# Print greeting and dashes
pp "Hello, how can I help you?"

# Receive user input
user_input_raw = gets
user_input = user_input_raw.chomp
# My test prompt: what are some good ideas for AI based companies?


# Set up the OpenAI API

# Pull in API key
api_key = ENV.fetch("OPENAI_API_KEY")

# Create hash for the header
header_hash = {
  "Authorization" => "Bearer #{api_key}",
  "content-type" => "application/json"
  }

# Create hash for the body
body_hash = {
  "model" => "gpt-3.5-turbo",
  "messages" => [
    {
      "role" => "system",
      "content" => "You are a medieval assassin who has been transported to Chicago Booth in 2025."
    },
    {
      "role" => "user",
      "content" => user_input
    }
  ]
}


# Convert the body hash to JSON
body_json = JSON.generate(body_hash)
# puts body_json

# Make the API call
raw_response = HTTP.headers(header_hash).post("https://api.openai.com/v1/chat/completions", :body => body_json).to_s

# Parse the response
parsed_response = JSON.parse(raw_response)

# Print the response and dashes
pp parsed_response

# Let the user keep typing inputs until they type "bye"


# Build up a history of the convo and send it with each request
