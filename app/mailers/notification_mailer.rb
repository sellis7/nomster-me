class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

  def comment_added(comment)
    @place = comment.place  # pulling from db
    @place_owner = @place.user  # pulling specific owner of comment from db
    mail(to: 'webdev.throwaway@gmail.com',
      subject: "A comment was added to #{@place.name}")
    ## Would be mail(to: @place_owner.email, ...) if owner of comment to receive msg
  end
end
