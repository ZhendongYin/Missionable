defmodule MissionableWeb.PageController do
  use MissionableWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
