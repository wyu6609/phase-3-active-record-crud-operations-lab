class Movie < ActiveRecord::Base
  def self.find_all_movies_by_year(year)
    Movie.where(year: year)
  end

  #create instantiates a movie by a given title, saves it to the database
  def self.create_with_title(title)
    Movie.create(title: title)
  end

  #   Read

  # Movie.first_movie: returns the first item in the table
  def self.first_movie
    Movie.first
  end

  # Movie.last_movie: returns the last item in the table
  def self.last_movie
    Movie.last
  end

  # Movie.movie_count: returns the number of records in the table
  def self.movie_count
    Movie.count
  end

  # Movie.find_movie_with_id: returns a movie from the table based on its id with the .find method
  def self.find_movie_with_id(id)
    Movie.find(id)
  end

  # Movie.find_movie_with_attributes: returns a movie from the table based on its attributes with the .find_by method
  def self.find_movie_with_attributes(attributes)
    Movie.find_by(attributes)
  end

  # Movie.find_movies_after_2002: uses a .where clause to select the appropriate movies released after 2002
  def self.find_movies_after_2002()
    Movie.where('release_date > 2002')
  end

  #    Update
  #    Movie#update_with_attributes: updates a single movie using the #update method

  def update_with_attributes(attributes)
    self.update(attributes)
  end

  #    Movie.update_all_titles: updates the title of all records at once using the .update method
  def self.update_all_titles(title)
    Movie.update(title: title)
  end

  #   Delete
  # Movie.delete_by_id: deletes a single item with the #destroy method
  def self.delete_by_id(id)
    movie = Movie.find(id)
    movie.destroy
  end

  # Movie.delete_all_movies: deletes all items at once with the .destroy_all method
  def self.delete_all_movies
    Movie.destroy_all
  end
end
