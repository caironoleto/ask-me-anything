defmodule AskMeAnything.Repo do
  use Ecto.Repo,
    otp_app: :ask_me_anything,
    adapter: Ecto.Adapters.Postgres
end
