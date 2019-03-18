defmodule CastBug.Repo do
  use Ecto.Repo,
    otp_app: :castbug,
    adapter: Ecto.Adapters.Postgres
end
