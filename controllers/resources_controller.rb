# frozen_string_literal: true

require 'sinatra'
require_relative '../helpers/resources_api_helper'

###
# @description Group all resources actions
###
class ResourcesController
  ###
  # @description Get the resources
  # @return [Array] The resources collection
  ###
  def self.index
    helper = ResourcesAPIHelper.new
    helper.fetch_resources
  end
end
