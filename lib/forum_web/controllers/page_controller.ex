defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "Alice", email: "Sj0n5@example.com"},
      %{id: 2, name: "Bob", email: "5kXp3@example.com"}
    ]

    json(conn, %{users: users})
  end
end
