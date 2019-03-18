# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :castbug,
  namespace: CastBug,
  ecto_repos: [CastBug.Repo]

# Configures the endpoint
config :castbug, CastBugWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FW8NJGVrG+pjz9Z8Od/KtC36ivIoo4leFeT6mpTUfLHbTqUmv+h7ekvgWTNtPYpn",
  render_errors: [view: CastBugWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CastBug.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
