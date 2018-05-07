class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form("patrick@example.com", "Patrick", "Hello World!")
  end
end
