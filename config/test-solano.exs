use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :serotina, Serotina.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :debug

# Configure your database
config :serotina, Serotina.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("TDDIUM_DB_PG_USER"),
  password: System.get_env("TDDIUM_DB_PG_PASSWORD"),
  database: System.get_env("TDDIUM_DB_PG_NAME"),
  hostname: System.get_env("TDDIUM_DB_PG_HOST"),
  port: System.get_env("TDDIUM_DB_PG_PORT"),
  pool: Ecto.Adapters.SQL.Sandbox
