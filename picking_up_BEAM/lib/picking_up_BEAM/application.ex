defmodule PickingUp_BEAM.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      PickingUp_BEAMWeb.Telemetry,
      PickingUp_BEAM.Repo,
      {DNSCluster, query: Application.get_env(:picking_up_BEAM, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: PickingUp_BEAM.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: PickingUp_BEAM.Finch},
      # Start a worker by calling: PickingUp_BEAM.Worker.start_link(arg)
      # {PickingUp_BEAM.Worker, arg},
      # Start to serve requests, typically the last entry
      PickingUp_BEAMWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PickingUp_BEAM.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PickingUp_BEAMWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
