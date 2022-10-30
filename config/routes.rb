Rails.application.routes.draw do
  
  get("directors/eldest", {:controller => "directors", :action =>"wisest"})
  
  get("/", { :controller => "application", :action => "homepage" })

  get("directors", { :controller => "directors", :action => "index"})

  get("directors/youngest", {:controller => "directors", :action =>"youngest"})

  get("directors/:an_id", {:controller=>"directors",:action=>"director_details"})


  get("movies", { :controller => "directors", :action => "indexmovies"})
  
  get("/movies/:an_id", { :controller => "directors", :action => "movie_details"})

  get("/actors", { :controller => "actors", :action => "index"})
  get("/actors/:an_id", { :controller => "actors", :action => "actor_details"})
end
