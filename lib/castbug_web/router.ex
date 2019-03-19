defmodule CastBugWeb.Router do
  use CastBugWeb, :router

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

  scope "/", CastBugWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/" do
    forward "/graph", Absinthe.Plug, schema: CastBugWeb.Schema, interface: :simple, context: %{pubsub: CastBugWeb.Endpoint}
    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: CastBugWeb.Schema, interface: :simple, context: %{pubsub: CastBugWeb.Endpoint}
  end

  # Other scopes may use custom stacks.
  # scope "/api", CastBugWeb do
  #   pipe_through :api
  # end
end
