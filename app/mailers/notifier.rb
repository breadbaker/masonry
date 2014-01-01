class Notifier < ActionMailer::Base
  default from: "dan@the-masonry.herokuapp.com/"

  def send_notify
    mail( to: 'danielebaker@gmail.com', subject: 'subject')
  end

  def receive(email)
    puts email
  end

end
