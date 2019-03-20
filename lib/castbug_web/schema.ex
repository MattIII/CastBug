defmodule CastBugWeb.Schema do
  use Absinthe.Schema

  alias CastBugWeb.PodcastResolver

  @desc "A collection of podcast episodes, and details about the podcast itself"
  object :channel do
    field :id, non_null(:id)
    @desc "The creator[s] of the podcast"
    field :author, :string
    field :categories, list_of(:string)
    field :copyright, :string
    field :description, :string
    field :explicit, :boolean
    field :image_link, :string
    field :image_title, :string
    field :image_url, :string
    field :keywords, :string
    field :link, :string
    field :managing_editor_name, :string
    field :managing_editor_email, :string
    field :owner_name, :string
    field :owner_email, :string
    field :pub_date, :string
    field :subtitle, :string
    field :summary, :string
    field :title, non_null(:string)
    field :webmaster_name, :string
    field :webmaster_email, :string
    field :xml_link, non_null(:string)
    field :related_channels, list_of(:channel)
  end

  query do
    @desc "Get all podcasts in the CastBug database."
    field :all_channels, non_null(list_of(non_null(:channel))) do
      resolve &PodcastResolver.all_channels/3
    end
  end

  @desc "Create a new podcast channel"
  mutation do
    field :create_channel, :channel do
      arg :author, :string
      arg :categories, list_of(:string)
      arg :copyright, :string
      arg :description, :string
      arg :explicit, :boolean
      arg :image_link, :string
      arg :image_title, :string
      arg :image_url, :string
      arg :keywords, :string
      arg :link, :string
      arg :managing_editor_name, :string
      arg :managing_editor_email, :string
      arg :owner_name, :string
      arg :owner_email, :string
      arg :pub_date, :string
      arg :subtitle, :string
      arg :summary, :string
      arg :title, non_null(:string)
      arg :webmaster_name, :string
      arg :webmaster_email, :string
      arg :xml_link, non_null(:string)

      resolve &PodcastResolver.create_channel/3
    end
  end
end
