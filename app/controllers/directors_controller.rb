class DirectorsController < ApplicationController

  def index
    @list_of_directors=Director.all
    render({:template => "directors_template/index.html.erb"})
  end

  def wisest
    @oldest = Director.where.not({:dob =>nil}).order({:dob=> :asc}).at(0)
  render({:template => "directors_template/eldest.html.erb"})
  end

  def youngest
    @youngest = Director.where.not({:dob =>nil}).order({:dob=> :desc}).at(0)
  render({:template => "directors_template/youngest.html.erb"})
  end

  def director_details
    #params
    the_id = params.fetch("an_id")
    @the_director = Director.where({:id=>the_id}).at(0)
    @themovies=Movie.where({:director_id=>the_id})
  render({:template => "directors_template/show.html.erb"})

  end


  
  def movie_details

    the_id = params.fetch("an_id")
    @the_movie = Movie.all.where({ :id => the_id}).at(0)
    render({ :template => "movies_template/show.html.erb"})
  end


  def indexmovies
    @list_of_directors=Director.all
    @list_of_movies=Movie.all
    render({:template => "movies_template/index.html.erb"})
  end



end
