defmodule Junky.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset


  schema "posts" do
    field :body, :string
    field :published, :boolean, default: false
    field :published_at, :naive_datetime
    field :title, :string
    field :views, :integer

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body, :published_at, :published, :views])
    |> validate_required([:title, :body, :published_at, :published, :views])
  end
end
