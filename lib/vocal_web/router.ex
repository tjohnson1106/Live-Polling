defmodule VocalWeb.Router do
  use VocalWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", VocalWeb
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/polls", PollController, :index
    get "/poll/new", PollController, :new
    post "/polls", PollController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", VocalWeb do
  #   pipe_through :api
  # end
end
