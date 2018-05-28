# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :junky,
  ecto_repos: [Junky.Repo]

# Configures the endpoint
config :junky, JunkyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YatIEKg+V7OU70JF4IvpPpVdE07uVmv+VOgPsgfEs0ENWmJna5KdljoGxZrFt1lh",
  render_errors: [view: JunkyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Junky.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :torch,
  otp_app: :junky,
  template_format: "eex"

config :mix_docker, image: "johninvictus/junky"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
