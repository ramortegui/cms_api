# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cms_api,
  ecto_repos: [CmsApi.Repo]

# Configures the endpoint
config :cms_api, CmsApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GODq0DSUhfEi5gdglPpdV2brW90sEN5yOmSdwHVZP/AsKVfgIVxcmUfc8sHaB1QE",
  render_errors: [view: CmsApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CmsApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
