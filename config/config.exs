# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :cors_example, CorsExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6+Hv+WHnclUT3+100nBknLKsIt0OgqeklTxg2VQQhN5DKizf/7w7TqiudFtSDY0u",
  render_errors: [view: CorsExampleWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: CorsExample.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
