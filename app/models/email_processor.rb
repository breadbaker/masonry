class EmailProcessor
  def self.process(email)
    Post.create!({ body: email.body, email: email.from })
    # all of your application-specific code here - creating models,
    # processing reports, etc
    if  email.attachements[0]
      Special.create!({
        name: email.subject,
        image: email.attachements[0]
      })
    end
  end
end