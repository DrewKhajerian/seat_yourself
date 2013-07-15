class UserMailer < ActionMailer::Base
  default from: "andrew@seatyourself.com"

  # def welcome_email(user)
  # 	@user = user
  # 	@url = 'http://seatyourself.com/sessions/new'
  # 	mail(to: @user.email, subject: "Welcome to SeatYourself!")
  # end
end
