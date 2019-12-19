defmodule CorsExampleWeb.PostsControllerTest do
  use CorsExampleWeb.ConnCase

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "CORS will only work with example.com", %{conn: conn} do
    assert conn
           |> put_req_header("origin", "https://example.com")
           |> get("/api/posts")
           |> get_resp_header("access-control-allow-origin") == ["https://example.com"]

    assert conn
           |> put_req_header("origin", "https://foobar.com")
           |> get("/api/posts")
           |> get_resp_header("access-control-allow-origin") == []
  end
end
