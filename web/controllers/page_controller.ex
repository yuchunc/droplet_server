defmodule DropletServer.PageController do
  use DropletServer.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
