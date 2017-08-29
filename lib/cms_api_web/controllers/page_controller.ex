defmodule CmsApiWeb.PageController do
  use CmsApiWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
