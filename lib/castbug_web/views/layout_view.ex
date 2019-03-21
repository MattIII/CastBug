defmodule CastBugWeb.LayoutView do
  use CastBugWeb, :view
end

defmodule CastBugWeb.Helpers do
  def getFromTemplate(key,template) do
     {:ok, result} = File.read(Path.expand("./lib/castbug_web/templates/layout/../page/#{template}.eex"))
     case Regex.run(~r/##\s*#{key}:\s*(.*)\s*%\>/i, result) do
        [fullMatch,finalTitle] -> finalTitle
        _-> ""
     end
  end
end
