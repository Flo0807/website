defmodule WebsiteWeb.BlogLive.Index do
  use WebsiteWeb, :live_view

  alias Website.Repo

  def mount(_params, _session, socket) do
    {:ok, articles} = Repo.list(:articles)

    socket =
      socket
      |> assign(:articles, articles)

    {:ok, socket}
  end
end
