defmodule CastBug.Repo.Migrations.CreateChannels do
  use Ecto.Migration

  def change do
    create table(:channels) do
      add :link, :string
      add :copyright, :string
      add :webMasterEmail, :string
      add :webMasterName, :string
      add :managingEditorEmail, :string
      add :managingEditorName, :string
      add :imageUrl, :string
      add :imageTitle, :string
      add :imageLink, :string
      add :ownerName, :string
      add :ownerEmail, :string
      add :categories, {:array, :string}
      add :keywords, :text
      add :explicit, :boolean, default: false, null: false
      add :xmlLink, :string
      add :pubDate, :date
      add :title, :string
      add :author, :string
      add :description, :text
      add :summary, :text
      add :subtitle, :text

      timestamps()
    end

  end
end
