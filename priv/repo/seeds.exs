# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CastBug.Repo.insert!(%CastBug.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias CastBug.Podcasts.Channel
alias CastBug.Repo

%Channel{  author: "The McElroys",  categories: ["Comedy"],  copyright: "Justin, Travis and Griffin McElroy",  description: "Free advice, from three of the world's most qualified experts.",  explicit: true,  imageLink: "http://www.mbmbam.com",  imageTitle: "My Brother, My Brother And Me",  imageUrl: "http://static.libsyn.com/p/assets/6/d/7/d/6d7d36d6929db515/MBMBAM_Update.jpg",  keywords: "",  link: "http://www.mbmbam.com",  managingEditorEmail: "mbmbam@gmail.com",  managingEditorName: "mbmbam@gmail.com",  ownerEmail: "mbmbam@gmail.com",  ownerName: "Justin McElroy",  pubDate: ~D[2019-03-18],  subtitle: "My Brother, My Brother and Me is an advice show for the modern age.",  summary: "Free advice from three of the world's most qualified, most related experts: Justin, Travis and Griffin McElroy. For one-half to three-quarters of an hour every Monday, we tell people how to live their lives, because we're obviously doing such a great job of it so far.",  title: "My Brother, My Brother And Me",  webMasterEmail: "",  webMasterName: "",  xmlLink: "http://mbmbam.libsyn.com/rss"} |> Repo.insert!
