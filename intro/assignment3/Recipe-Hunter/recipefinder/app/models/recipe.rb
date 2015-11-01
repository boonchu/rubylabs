#require 'httparty'
#require 'pp'

class Recipe
    include HTTParty

    # http://food2fork.com/about/api
    # Food2Fork API overview

    key_value = ENV['FOOD2FORK_KEY'] || '40f95187f77400f34067c40c8c4024ff'

    #ENV['FOOD2FORK_SERVER_AND_PORT'] = 'www.food2fork.com:80'
    hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'

    base_uri "http://#{hostport}/api"
    default_params fields: 'count, recipes', key: key_value
    format :json

    def self.for (keyword)
      get('/search', query: {q: keyword})['recipes']
    end

end

pp Recipe.for 'chocolate'
