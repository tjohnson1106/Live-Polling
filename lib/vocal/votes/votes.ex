defmodule Vocal.Votes do
 import Ecto.Query, warn: false

 alias Vocal.Repo
 alias Vocal.Votes.Poll
 alias Vocal.Votes.Option

 def list_polls do
  Repo.all(Poll) |> Repo.preload(:options)

 end

end
