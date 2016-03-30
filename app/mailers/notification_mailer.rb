class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

  # Currently configured to email a junk acct for testing purposes
  def comment_added(comment)
    @place = comment.place  # pulling from db
    @place_owner = @place.user  # pulling specific owner of comment from db
    # Would be mail(to: @place_owner.email, ...) if owner of comment to receive msg
    mail(to: 'webdev.throwaway@gmail.com',
      subject: "A comment was added to #{@place.name}")
  end
end
