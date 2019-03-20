defmodule CastBug.Podcasts.Channel do
  use Ecto.Schema
  import Ecto.Changeset

  schema "channels" do
    field :author, :string
    field :categories, {:array, :string}
    field :copyright, :string
    field :description, :string
    field :explicit, :boolean, default: false
    field :image_link, :string
    field :image_title, :string
    field :image_url, :string
    field :keywords, :string
    field :link, :string
    field :managing_editor_name, :string
    field :managing_editor_email, :string
    field :owner_name, :string
    field :owner_email, :string
    field :pub_date, :naive_datetime
    field :subtitle, :string
    field :summary, :string
    field :title, :string
    field :webmaster_name, :string
    field :webmaster_email, :string
    field :xml_link, :string

    timestamps()
  end

  @doc false
  def changeset(channel, attrs) do
    channel
    |> cast(attrs, [:link, :copyright, :webmaster_name, :webmaster_email, :managing_editor_name, :managing_editor_email, :image_url, :image_title, :image_link, :owner_name, :owner_email, :categories, :keywords, :explicit, :xml_link, :pub_date, :title, :author, :description, :summary, :subtitle])
    |> validate_required([:xml_link, :title])
  end
end
