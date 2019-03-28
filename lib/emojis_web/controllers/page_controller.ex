defmodule EmojisWeb.PageController do
  use EmojisWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
