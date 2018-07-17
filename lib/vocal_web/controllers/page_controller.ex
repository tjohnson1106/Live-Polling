defmodule VocalWeb.PageController do
  use VocalWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
