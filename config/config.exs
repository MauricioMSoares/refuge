# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :refuge,
  ecto_repos: [Refuge.Repo]

# Configures the endpoint
config :refuge, RefugeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7s2LalpfksFd2KwuABwn0kUKsu/nkS6mHbliV5pe8jj4Ue/ycI6H4rDQ6y78IPPH",
  render_errors: [view: RefugeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Refuge.PubSub,
  live_view: [signing_salt: "lUyfIP9J"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
