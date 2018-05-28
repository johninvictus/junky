defmodule JunkyWeb.PageController do
  use JunkyWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
