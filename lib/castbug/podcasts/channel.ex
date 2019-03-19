defmodule CastBug.Podcasts.Channel do
  use Ecto.Schema
  import Ecto.Changeset

  schema "channels" do
    field :author, :string
    field :categories, {:array, :string}
    field :copyright, :string
    field :description, :string
    field :explicit, :boolean, default: false
    field :imageLink, :string
    field :imageTitle, :string
    field :imageUrl, :string
    field :keywords, :string
    field :link, :string
    field :managingEditorEmail, :string
    field :managingEditorName, :string
    field :ownerEmail, :string
    field :ownerName, :string
    field :pubDate, :date
    field :subtitle, :string
    field :summary, :string
    field :title, :string
    field :webMasterEmail, :string
    field :webMasterName, :string
    field :xmlLink, :string

    timestamps()
  end

  @doc false
  def changeset(channel, attrs) do
    channel
    |> cast(attrs, [:link, :copyright, :webMasterEmail, :webMasterName, :managingEditorEmail, :managingEditorName, :imageUrl, :imageTitle, :imageLink, :ownerName, :ownerEmail, :categories, :keywords, :explicit, :xmlLink, :pubDate, :title, :author, :description, :summary, :subtitle])
    |> validate_required([:link, :copyright, :webMasterEmail, :webMasterName, :managingEditorEmail, :managingEditorName, :imageUrl, :imageTitle, :imageLink, :ownerName, :ownerEmail, :categories, :keywords, :explicit, :xmlLink, :pubDate, :title, :author, :description, :summary, :subtitle])
  end
end
