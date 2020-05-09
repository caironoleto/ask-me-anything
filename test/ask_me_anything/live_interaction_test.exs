defmodule AskMeAnything.LiveInteractionTest do
  use AskMeAnything.DataCase

  alias AskMeAnything.LiveInteraction

  describe "questions" do
    alias AskMeAnything.LiveInteraction.Question

    @valid_attrs %{author: "some author", question: "some question"}

    test "change_question/1 returns a question changeset" do
      assert %Ecto.Changeset{} = LiveInteraction.change_question(%Question{}, @valid_attrs)
    end
  end
end
