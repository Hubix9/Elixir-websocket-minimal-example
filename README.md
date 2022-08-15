# Example WebsocketServer

## Description

This repository serves as a minimal example of an elixir websocket server.

**plug_cowboy** is the only dependency of this project. this project does not use Phoenix framework.

This project has been tested with:

```
Erlang/OTP 24
Elixir 1.13.4 (compiled with Erlang/OTP 22)
```

## Installation

Clone this repository and run:
```bash 
mix deps.get
mix run --no-halt
```
The websocket server endpoint is hosted at:
```
ws://127.0.0.1:3000/ws
```

Upon connecting, the server will send message "Hello from websocket server!" to all connected sockets in a 1 second interval.


## Useful resources:

* https://ninenines.eu/docs/en/cowboy/2.6/manual/cowboy_websocket/
* https://ninenines.eu/docs/en/cowboy/2.6/guide/ws_handlers/


## Credits:

* https://gist.github.com/alanpeabody/4fae12b420fb50376af4

* https://medium.com/@loganbbres/elixir-websocket-chat-example-c72986ab5778