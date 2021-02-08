defmodule Naive.SymbolSupervisor do
  use Supervisor

  @name __MODULE__

  def start_link(symbol) do
    Supervisor.start_link(@name, symbol, name: :"#{@name}-#{symbol}")
  end

  def init(symbol) do
    Supervisor.init(
      [
        {DynamicSupervisor, strategy: :one_for_one, name: :"Naive.DynamicSupervisor-#{symbol}"},
        {Naive.Leader, symbol}
      ],
      strategy: :one_for_all
    )
  end
end
