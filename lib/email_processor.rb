class EmailProcessor
  def self.process(email)
    Post.create!({ body: email.body, email: email.from })
    # all of your application-specific code here - creating models,
    # processing reports, etc
  end
end