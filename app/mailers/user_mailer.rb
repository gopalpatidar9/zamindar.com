class UserMailer < ApplicationMailer
  def match_notification(user, matching_rentals)
    @user = user
    @matching_rentals = matching_rentals
    mail(to: @user.email, subject: 'Matching Rentals Found')
  end
end
