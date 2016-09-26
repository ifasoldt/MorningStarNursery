class ApplicationMailer < ActionMailer::Base
  default from: 'contact_notifications@morning_star_nursery.com'
  default to: 'kelly.fasoldt@gmail.com, tomfasoldt@gmail.com'
  layout 'mailer'
end
