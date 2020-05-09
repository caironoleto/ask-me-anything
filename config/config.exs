# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ask_me_anything,
  ecto_repos: [AskMeAnything.Repo]

# Configures the endpoint
config :ask_me_anything, AskMeAnythingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Y71oNvaw2Xx9tIGXW2f6rDfpcyJBFZ9TVCCc3ZkXipGkhrtzDa6mOmf23Tp+pQT4",
  render_errors: [view: AskMeAnythingWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AskMeAnything.PubSub,
  live_view: [signing_salt: "OUIk7PhU"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
