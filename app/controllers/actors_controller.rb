class ActorsController < ApplicationController

  def index
@list_of_actors = Actor.all


  render({ :template => "actor_templates/index.html.erb"})
  end
  

  def actor_details

    the_id = params.fetch("an_id")
    @the_actor = Actor.where({ :id => the_id}).at(0)
    @characters = Character.where({ :actor_id => the_id})
    @p=@characters

    @movies_lib = Movie.all
    @directors_lib=Director.all
    render({ :template => "actor_templates/show.html.erb"})
  end
end
