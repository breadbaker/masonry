class MenuController < ApplicationController

  def index
    @menu = File.read(Rails.public_path+'/menu.json')
    special = Special.last
    if special
      @name = special.name
      @image = special.image.url(:big) if special.image.exists?
    end
  end

  def menu
    @menu = File.read(Rails.public_path+'/menufull.json')
  end

  def notify
    begin
      Notifier.send_notify.deliver!
      render json: { status: 'ok' }
    rescue StandardError => e
      render json: { status: 'not ok', message: e.message }
    end
  end

end
