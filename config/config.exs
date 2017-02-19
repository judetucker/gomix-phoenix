# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gomix,
  ecto_repos: [Gomix.Repo]

# Configures the endpoint
config :gomix, Gomix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SrlOb1W8hfEY6DmA9+8zwD57wga3C7cBt6bU/cQrx3Oc8sJuy5ndTfuBMvTD1/Vl",
  render_errors: [view: Gomix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Gomix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
