require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:root)
end

get("/madlib") do
  # expected params
  # { 
  #   "noun" => "cat",
  #   "verb" => "eat",
  #   "adjective" => "sweet"
  # }
  @title = "City Life"
  @noun = params.fetch("noun", "<noun>")
  @verb = params.fetch("verb", "<verb>")
  @adjective = params.fetch("adjective", "<adjective>")

  erb(:madlib)
end
