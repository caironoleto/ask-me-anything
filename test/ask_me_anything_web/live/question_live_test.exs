defmodule AskMeAnythingWeb.QuestionLiveTest do
  use AskMeAnythingWeb.ConnCase

  import Phoenix.LiveViewTest

  # alias AskMeAnything.LiveInteraction

  describe "Index" do
    test "adds a new question", %{conn: conn} do
      {:ok, live_view, html} = live(conn, Routes.question_index_path(conn, :index))

      assert html =~ "Ask me anything"

      assert live_view
             |> element("#question-form")
             |> render_change(%{
               question: %{question: "My Awesome Question", author: "Cairo Noleto"}
             }) =~ "My Awesome Question"
    end
  end
end
