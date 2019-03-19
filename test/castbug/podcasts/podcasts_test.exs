defmodule CastBug.PodcastsTest do
  use CastBug.DataCase

  alias CastBug.Podcasts

  describe "channels" do
    alias CastBug.Podcasts.Channel

    @valid_attrs %{author: "some author", categories: [], copyright: "some copyright", description: "some description", explicit: true, imageLink: "some imageLink", imageTitle: "some imageTitle", imageUrl: "some imageUrl", keywords: "some keywords", link: "some link", managingEditorEmail: "some managingEditorEmail", managingEditorName: "some managingEditorName", ownerEmail: "some ownerEmail", ownerName: "some ownerName", pubDate: ~D[2010-04-17], subtitle: "some subtitle", summary: "some summary", title: "some title", webMasterEmail: "some webMasterEmail", webMasterName: "some webMasterName", xmlLink: "some xmlLink"}
    @update_attrs %{author: "some updated author", categories: [], copyright: "some updated copyright", description: "some updated description", explicit: false, imageLink: "some updated imageLink", imageTitle: "some updated imageTitle", imageUrl: "some updated imageUrl", keywords: "some updated keywords", link: "some updated link", managingEditorEmail: "some updated managingEditorEmail", managingEditorName: "some updated managingEditorName", ownerEmail: "some updated ownerEmail", ownerName: "some updated ownerName", pubDate: ~D[2011-05-18], subtitle: "some updated subtitle", summary: "some updated summary", title: "some updated title", webMasterEmail: "some updated webMasterEmail", webMasterName: "some updated webMasterName", xmlLink: "some updated xmlLink"}
    @invalid_attrs %{author: nil, categories: nil, copyright: nil, description: nil, explicit: nil, imageLink: nil, imageTitle: nil, imageUrl: nil, keywords: nil, link: nil, managingEditorEmail: nil, managingEditorName: nil, ownerEmail: nil, ownerName: nil, pubDate: nil, subtitle: nil, summary: nil, title: nil, webMasterEmail: nil, webMasterName: nil, xmlLink: nil}

    def channel_fixture(attrs \\ %{}) do
      {:ok, channel} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Podcasts.create_channel()

      channel
    end

    test "list_channels/0 returns all channels" do
      channel = channel_fixture()
      assert Podcasts.list_channels() == [channel]
    end

    test "get_channel!/1 returns the channel with given id" do
      channel = channel_fixture()
      assert Podcasts.get_channel!(channel.id) == channel
    end

    test "create_channel/1 with valid data creates a channel" do
      assert {:ok, %Channel{} = channel} = Podcasts.create_channel(@valid_attrs)
      assert channel.author == "some author"
      assert channel.categories == []
      assert channel.copyright == "some copyright"
      assert channel.description == "some description"
      assert channel.explicit == true
      assert channel.imageLink == "some imageLink"
      assert channel.imageTitle == "some imageTitle"
      assert channel.imageUrl == "some imageUrl"
      assert channel.keywords == "some keywords"
      assert channel.link == "some link"
      assert channel.managingEditorEmail == "some managingEditorEmail"
      assert channel.managingEditorName == "some managingEditorName"
      assert channel.ownerEmail == "some ownerEmail"
      assert channel.ownerName == "some ownerName"
      assert channel.pubDate == ~D[2010-04-17]
      assert channel.subtitle == "some subtitle"
      assert channel.summary == "some summary"
      assert channel.title == "some title"
      assert channel.webMasterEmail == "some webMasterEmail"
      assert channel.webMasterName == "some webMasterName"
      assert channel.xmlLink == "some xmlLink"
    end

    test "create_channel/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Podcasts.create_channel(@invalid_attrs)
    end

    test "update_channel/2 with valid data updates the channel" do
      channel = channel_fixture()
      assert {:ok, %Channel{} = channel} = Podcasts.update_channel(channel, @update_attrs)
      assert channel.author == "some updated author"
      assert channel.categories == []
      assert channel.copyright == "some updated copyright"
      assert channel.description == "some updated description"
      assert channel.explicit == false
      assert channel.imageLink == "some updated imageLink"
      assert channel.imageTitle == "some updated imageTitle"
      assert channel.imageUrl == "some updated imageUrl"
      assert channel.keywords == "some updated keywords"
      assert channel.link == "some updated link"
      assert channel.managingEditorEmail == "some updated managingEditorEmail"
      assert channel.managingEditorName == "some updated managingEditorName"
      assert channel.ownerEmail == "some updated ownerEmail"
      assert channel.ownerName == "some updated ownerName"
      assert channel.pubDate == ~D[2011-05-18]
      assert channel.subtitle == "some updated subtitle"
      assert channel.summary == "some updated summary"
      assert channel.title == "some updated title"
      assert channel.webMasterEmail == "some updated webMasterEmail"
      assert channel.webMasterName == "some updated webMasterName"
      assert channel.xmlLink == "some updated xmlLink"
    end

    test "update_channel/2 with invalid data returns error changeset" do
      channel = channel_fixture()
      assert {:error, %Ecto.Changeset{}} = Podcasts.update_channel(channel, @invalid_attrs)
      assert channel == Podcasts.get_channel!(channel.id)
    end

    test "delete_channel/1 deletes the channel" do
      channel = channel_fixture()
      assert {:ok, %Channel{}} = Podcasts.delete_channel(channel)
      assert_raise Ecto.NoResultsError, fn -> Podcasts.get_channel!(channel.id) end
    end

    test "change_channel/1 returns a channel changeset" do
      channel = channel_fixture()
      assert %Ecto.Changeset{} = Podcasts.change_channel(channel)
    end
  end
end
