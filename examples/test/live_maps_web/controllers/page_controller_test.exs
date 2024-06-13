defmodule LiveMapsWeb.PageControllerTest do
  use LiveMapsWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    r = html_response(conn, 200)
    assert r |> String.match?(~r/Maps/)
  end
end
