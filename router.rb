# frozen_string_literal: true

require 'sinatra'
require_relative 'controllers/resources_controller'

###
# @description: Root point of the application.
###
get '/' do
  ResourcesController.index
end
