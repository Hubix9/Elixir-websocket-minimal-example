defmodule SocketHandler do
  @behaviour :cowboy_websocket
  def init(req, state) do
    {:cowboy_websocket, req, state}
  end

  # Executed on connection initialisation
  def websocket_init(_state) do
    state = %{}
    :timer.send_interval(:timer.seconds(1), self(), {:text, "Hello from websocket server!"})
    {:ok, state}
  end

  # Executed after receiving a websocket message
  def websocket_handle({:text, message}, state) do
    IO.inspect(message)
    {:ok, state}
  end

  # Executed after receiving elixir process message
  def websocket_info(info, state) do
    {:reply, info, state}
  end


  # Executed on websocket termination
  def terminate(_reason, _req, _state) do
    :ok
  end
end
