defmodule CastBugWeb.PodcastResolver do
  alias CastBug.Podcasts

  def all_channels(_root, _args, _info) do
    channels = Podcasts.list_channels()
    {:ok, channels}
  end

  def create_channel(_root, args, _info) do
    # TODO: add error handling
    {:ok, newDate} = Timex.parse(args.pub_date,"{RFC1123}")
    newNaiveDate = Timex.to_naive_datetime(newDate)
    fixedArgs = %{args | pub_date: newNaiveDate}
    case Podcasts.create_channel(fixedArgs) do
      {:ok, channel} ->
        {:ok, channel}
      _error ->
        {:error, "Could not create channel"}
    end
  end
end
