defmodule Junky.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :body, :text
      add :published_at, :naive_datetime
      add :published, :boolean, default: false, null: false
      add :views, :integer

      timestamps()
    end

  end
end
