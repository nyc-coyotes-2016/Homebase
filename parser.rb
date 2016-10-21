module Parser
  def self.load(arg)
    # and handling http responses:
    require 'open-uri'

    # this library is for handling json strings (parsing and creating):
    require 'json'

    # NYC Open Data: Parking tickets 2015 API endpoint:
    base_url = "https://data.cityofnewyork.us/resource/5ud2-iqje.json"


    # get user input (this would be a concern for your View)







    # make http request to api endpoint for specific plate_id,
    # which will return a json string in http response:
    json_string_response = open(base_url + "?" + arg).read

    # parse json string into Ruby hashes
    ruby_hash_response = JSON.parse(json_string_response)

    # now you can manipulate the data via the Ruby hashes
    # (encapsulate into Ruby objects, etc.)
    # here are the Ruby hashes:

    ruby_hash_response.map do |hash|
        Homebase.new(hash)
    end


  end
end


