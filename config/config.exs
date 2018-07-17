# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :vocal,
  ecto_repos: [Vocal.Repo]

# Configures the endpoint
config :vocal, VocalWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "I3cJQvImGGfvFmNf9N/DVw3dI++Xnus5R4ZWc1vY0QHgWS9+xdF+yGr95M6IlXnH",
  render_errors: [view: VocalWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Vocal.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
