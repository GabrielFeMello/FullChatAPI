import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :full_chat_api, FullChatApi.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "full_chat_api_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :full_chat_api, FullChatApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "T+huiFmS+Kly+vx+gGApbJWEGyvV/rMIQt1Y6xkKLy9DKBfhiQC6QjR0GB7gGiqt",
  server: false

# In test we don't send emails.
config :full_chat_api, FullChatApi.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
