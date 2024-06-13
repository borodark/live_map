defmodule LiveMapsWeb.PageLive do
  use LiveMapsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:latitude,  37.7874905)
     |> assign(:longitude, -122.4078544)
     |> assign(:zoom, 14)
    }
  end

  @impl true
  def handle_event("change", %{"latitude" => latitude, "longitude" => longitude, "zoom" => zoom}, socket) do
    {latitude, _} = Float.parse(latitude)
    {longitude, _} = Float.parse(longitude)
    {zoom, _} = Integer.parse(zoom)

    {:noreply,
     socket
     |> assign(:latitude, latitude)
     |> assign(:longitude, longitude)
     |> assign(:zoom, zoom)
    }
  end
end
