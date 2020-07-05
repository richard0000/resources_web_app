# frozen_string_literal: true

require 'httparty'

###
# @description: This clas makes the connection with the resources service api
#   and returns the resources in an array form
###
class ResourcesAPIHelper
  include HTTParty
  base_uri 'http://localhost:4567'

  ###
  # @description Initializes the helper class with the necessary data to operate
  ###
  def initialize
    @resources_endpoint = '/api/v1/resources'
  end

  ###
  # @description Fetches the resources from the resources service API
  # and converts it into a collection of resources objects
  # @return [Array] The resources collection
  ###
  def fetch_resources
    begin
      resources = self.class.get(@resources_endpoint).body
      JSON.parse(resources)
    rescue => e
      "An error has occurred \n DETAILS:\n #{e}"
    end
  end
end
