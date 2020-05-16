defmodule AskMeAnythingWeb.QuestionLive.FormComponent do
  use AskMeAnythingWeb, :live_component

  alias AskMeAnything.LiveInteraction
  alias AskMeAnything.LiveInteraction.Question

  @impl true
  def handle_event("validate", %{"question" => question_params}, socket) do
    changeset =
      socket.assigns.question
      |> LiveInteraction.change_question(question_params)

    {:noreply, assign(socket, :changeset, changeset)}
  end

  def handle_event("save", %{"question" => question_params}, socket) do
    save_question(socket, question_params)
  end

  defp save_question(socket, %{"question" => question, "author" => author}) do
    question = %Question{
      id: Ecto.UUID.generate,
      question: question,
      author: author
    }

    send self(), {:add_question, question}

    {:noreply, socket}
  end
end
