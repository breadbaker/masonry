class MenuController < ApplicationController

  def index
    @menu = File.read(Rails.public_path+'/menu.json')
    @special = Special.last.name if Special.last
  end
end
