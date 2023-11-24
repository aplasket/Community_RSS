class Api::V1::CommunitiesController < ApplicationController
  def index
    zip = params[:zip_code]
    require 'pry'; binding.pry
  end
end