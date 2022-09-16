defmodule Missionable.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Missionable.Repo,
      # Start the Telemetry supervisor
      MissionableWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Missionable.PubSub},
      # Start the Endpoint (http/https)
      MissionableWeb.Endpoint
      # Start a worker by calling: Missionable.Worker.start_link(arg)
      # {Missionable.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Missionable.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MissionableWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
