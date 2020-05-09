defmodule AskMeAnythingWeb.QuestionLiveTest do
  use AskMeAnythingWeb.ConnCase

  import Phoenix.LiveViewTest

  # alias AskMeAnything.LiveInteraction

  describe "Index" do
    test "lists all questions", %{conn: conn} do
      {:ok, _index_live, html} = live(conn, Routes.question_index_path(conn, :index))

      assert html =~ "Ask me anything"
    end
  end
end
