defmodule Serotina.PageController do
  use Serotina.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
