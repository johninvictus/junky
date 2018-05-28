defmodule JunkyWeb.Router do
  use JunkyWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", JunkyWeb do
    # Use the default browser stack
    pipe_through(:browser)

    get("/", PageController, :index)
    resources("/posts", PostController)
  end

  # Other scopes may use custom stacks.
  # scope "/api", JunkyWeb do
  #   pipe_through :api
  # end
end
