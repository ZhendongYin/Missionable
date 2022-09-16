defmodule Missionable.Repo do
  use Ecto.Repo,
    otp_app: :missionable,
    adapter: Ecto.Adapters.Postgres
end
