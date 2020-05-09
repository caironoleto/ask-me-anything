defmodule AskMeAnythingWeb.QuestionLive.Index do
  use AskMeAnythingWeb, :live_view

  alias AskMeAnything.LiveInteraction.Question

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :questions, [])}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Questions")
    |> assign(:question, %Question{})
  end
end
