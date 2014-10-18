class DeliveryNotificationMailer < ActionMailer::Base
  default from: "aimozs@thecoderfactory.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.delivery_notification_mailer.notify.subject
  #
  def notify(business)
    @greeting = "Hi"
    @business = business
    # @user = business.owner_id
    mail(to: "aimozs@gmail.com", subject: "A new business as been created!")
  end
end
