class InboundController < ApplicationController
  
  def twilio
    special = Special.create({
      name: params["Body"]
    })
  end
end
