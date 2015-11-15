class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: 'architectof@zoho.com',
      subject: 'A comment was added to your posted location')
  end
end
