defmodule AskMeAnythingWeb.QuestionLive.Index do
  use AskMeAnythingWeb, :live_view

  alias AskMeAnything.LiveInteraction
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
    question = %Question{}

    socket
    |> assign(:page_title, "Listing Questions")
    |> assign(:changeset, LiveInteraction.change_question(question))
    |> assign(:question, question)
  end

  @impl true
  def handle_info({:add_question, question}, socket) do
    {:noreply, update(socket, :questions, fn questions -> [question | questions] end)}
  end
end
