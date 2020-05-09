defmodule AskMeAnything.LiveInteraction do
  @moduledoc """
  The LiveInteraction context.
  """

  alias AskMeAnything.LiveInteraction.Question

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking question changes.

  ## Examples

      iex> change_question(question)
      %Ecto.Changeset{data: %Question{}}

  """
  def change_question(%Question{} = question, attrs \\ %{}) do
    Question.changeset(question, attrs)
  end
end
