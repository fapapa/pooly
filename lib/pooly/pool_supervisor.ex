defmodule Pooly.PoolSupervisor do
  use Supervisor

  #######
  # API #
  #######

  def start_link(pool_config) do
    Supervisor.start_link(__MODULE__, pool_config, name: :"#{pool_config[:name]}Supervisor")
  end

  #############
  # Callbacks #
  #############

  def init(pool_config) do
    opts = [strategy: :one_for_all]

    children = [worker(Pooly.PoolServer, [self, pool_config])]

    supervise(children, opts)
  end
end
