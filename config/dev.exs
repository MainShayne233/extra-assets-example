use Mix.Config

config :extra_assets, ExtraAssets.Web.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
   watchers: [
     node: [
       "./node_modules/.bin/webpack-dev-server", "--watch-stdin", "--colors",
       cd: Path.expand("../assets", __DIR__),
     ]
   ]

config :extra_assets, ExtraAssets.Web.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/gettext/.*(po)$},
      ~r{lib/extra_assets/web/views/.*(ex)$},
      ~r{lib/extra_assets/web/templates/.*(eex)$}
    ]
  ]

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

config :extra_assets, ExtraAssets.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "extra_assets_dev",
  hostname: "localhost",
  pool_size: 10


  
