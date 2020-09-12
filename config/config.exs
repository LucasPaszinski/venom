# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :venom,
  ecto_repos: [Venom.Repo]

# Configures the endpoint
config :venom, VenomWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5cQBqFS4u2xloQhdbrKngOtUdocofOgJDYJvSNYyiSPtPQM0dAD2aVc96Os/AmrM",
  render_errors: [view: VenomWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Venom.PubSub,
  live_view: [signing_salt: "TFLBqD7Y"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
