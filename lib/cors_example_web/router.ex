defmodule CorsExampleWeb.Router do
  use CorsExampleWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CorsExampleWeb do
    pipe_through :api

    get "/posts", PostsController, :index
  end
end
