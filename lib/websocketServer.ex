defmodule WebsocketServer do
  use Application

  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: Router, dispatch: dispatch(), options: [port: 3000]}
    ]

    Supervisor.start_link(children, strategy: :one_for_one)

    {:ok, self()}
  end

  defp dispatch do
    [
      {:_,
       [
         {"/ws", SocketHandler, []},
         {:_, Plug.Cowboy.Handler, {Router, []}}
       ]}
    ]
  end
end
