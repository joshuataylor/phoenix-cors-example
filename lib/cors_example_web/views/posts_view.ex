defmodule CorsExampleWeb.PostsView do
  use CorsExampleWeb, :view

  def render("index.json", %{posts: posts}) do
    render_many(posts, __MODULE__, "show.json", as: :post)
  end

  def render("show.json", %{post: post}) do
    %{
      id: post.id,
      title: post.title
    }
  end
end
