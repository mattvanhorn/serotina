# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :serotina,
  ecto_repos: [Serotina.Repo]

# Configures the endpoint
config :serotina, Serotina.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "C3/GL87p4jwGXVlEi6D8aPzaO2q8olmesxnRdmy1+fqsPh59I3gDrCRm7W7vmrNq",
  render_errors: [view: Serotina.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Serotina.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
