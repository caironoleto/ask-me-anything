defmodule AskMeAnything.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      AskMeAnything.Repo,
      # Start the Telemetry supervisor
      AskMeAnythingWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: AskMeAnything.PubSub},
      # Start the Endpoint (http/https)
      AskMeAnythingWeb.Endpoint
      # Start a worker by calling: AskMeAnything.Worker.start_link(arg)
      # {AskMeAnything.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AskMeAnything.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    AskMeAnythingWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
