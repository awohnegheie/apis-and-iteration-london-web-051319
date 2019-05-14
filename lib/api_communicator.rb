require 'rest-client'
require 'json'

def get_character_movies_from_api(character_name)
  #make the web request
def fetch_character
  response_string = RestClient.get('http://www.swapi.co/api/people/')
  response_hash = JSON.parse(response_string)

result = fetch_and_parse('http://www.swapi.co/api/people/')
result['results']
end
end


  def fetch_and_parse(url)
    JSON.parse(RestClient.get(url))
  end

  def parse_character_movies(films_hash)
    # some iteration magic and puts out the movies in a nice list
    def get_film_info(url)
      fetch_and_parse(url)
    end
  end


  def show_character_movies(character)
    film_hash = get_character_movies_from_api(character)
    parse_character_movies(film_hash)
  def character_info(character_name)
    fetch_character.find { |c| c['names'].include?(character_name) }
  end
end


  #bonus

  def movies_hashes_for(character_name)
    c_info = character_info(character_name)
    film_info_array = c_info['films'].map do |url|
      get_film_info(url)
    end
  end
