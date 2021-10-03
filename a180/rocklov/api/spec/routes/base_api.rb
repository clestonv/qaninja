require "httparty"

class BaseApi
  include HTTParty
  base_uri "http://rocklov-api:3333/"
end
