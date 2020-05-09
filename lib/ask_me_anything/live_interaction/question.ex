defmodule AskMeAnything.LiveInteraction.Question do
  use Ecto.Schema
  import Ecto.Changeset

  schema "questions" do
    field :author, :string
    field :question, :string
  end

  @doc false
  def changeset(question, attrs) do
    question
    |> cast(attrs, [:question, :author])
    |> validate_required([:question])
  end
end
