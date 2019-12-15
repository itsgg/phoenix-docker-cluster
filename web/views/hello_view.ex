defmodule Hello.HelloView do
  use Hello.Web, :view

  def render("index.json", %{}) do
    %{hello: "World"}
  end
end
