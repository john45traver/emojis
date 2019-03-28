defmodule EmojisWeb.EmojiController do
  use EmojisWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"emoji" => emoji}) do
    formatted_emoji = ":#{String.replace(emoji, ~r/\s+/, "_")}:"
    unicode = Emojix.replace_by_char(formatted_emoji)
    if formatted_emoji === unicode do
      conn
      |> put_status(:not_found)
      |> json(%{error: "Emoji not found"})
    else
      json(conn, %{unicode: unicode} )
    end
  end

end
