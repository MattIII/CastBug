defmodule CastBugWeb.PodcastResolver do
  alias CastBug.Podcasts

  def all_channels(_root, _args, _info) do
    channels = Podcasts.list_channels()
    {:ok, channels} 
  end
end
