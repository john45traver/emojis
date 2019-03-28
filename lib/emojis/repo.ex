defmodule Emojis.Repo do
  use Ecto.Repo,
    otp_app: :emojis,
    adapter: Ecto.Adapters.Postgres
end
