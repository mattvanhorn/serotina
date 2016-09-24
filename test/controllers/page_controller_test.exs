defmodule Serotina.PageControllerTest do
  use Serotina.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "<div id=\"elm-container\">"
  end
end
