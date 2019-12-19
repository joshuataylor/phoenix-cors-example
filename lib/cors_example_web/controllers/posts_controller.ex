defmodule CorsExampleWeb.PostsController do
  use CorsExampleWeb, :controller

  def index(conn, params) do
    posts = [
      %{id: 1, title: "foo"},
      %{id: 2, title: "bar"},
      %{id: 3, title: "baz"}
    ]

    render(conn, :index, posts: posts)
  end
end
