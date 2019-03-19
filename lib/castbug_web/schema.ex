defmodule CastBugWeb.Schema do
  use Absinthe.Schema

  alias CastBugWeb.PodcastResolver

  @desc "A collection of podcast episodes, and details about the podcast itself"
  object :channel do
    @desc "The podcast's ID in CastBug's system"
    field :id, non_null(:id)
    @desc "The creator[s] of the podcast"
    field :author, non_null(:string)
    @desc "The title of the podcast"
    field :title, non_null(:string)
  end

  query do
    @desc "Get all podcasts in the CastBug database."
    field :all_channels, non_null(list_of(non_null(:channel))) do
      resolve &PodcastResolver.all_channels/3
    end
  end
end
