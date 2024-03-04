require "open-uri"

class FlatsController < ApplicationController
  before_action :set_flats
  def index
  end

  def show
    flat_id = params[:id].to_i
    @flat = @flats.find { |flat| flat["id"] == flat_id}
  end

  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats_serialised = URI.parse(url).open
    @flats = JSON.parse(flats_serialised.read)
  end
end
