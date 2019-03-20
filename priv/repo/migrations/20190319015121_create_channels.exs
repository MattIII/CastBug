defmodule CastBug.Repo.Migrations.CreateChannels do
  use Ecto.Migration

  def change do
    create table(:channels) do
      add :link, :string
      add :copyright, :string
      add :webmaster_name, :string
      add :webmaster_email, :string
      add :managing_editor_name, :string
      add :managing_editor_email, :string
      add :image_url, :string
      add :image_title, :string
      add :image_link, :string
      add :owner_name, :string
      add :owner_email, :string
      add :categories, {:array, :string}
      add :keywords, :text
      add :explicit, :boolean, default: false, null: false
      add :xml_link, :string
      add :pub_date, :naive_datetime
      add :title, :string
      add :author, :string
      add :description, :text
      add :summary, :text
      add :subtitle, :text

      timestamps()
    end

  end
end
