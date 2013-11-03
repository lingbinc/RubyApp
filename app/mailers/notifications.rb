class Notifications < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_tasklist.subject
  #
  def new_tasklist(tasklist)
    @greeting = "Hello task-master!"
    @id = tasklist.id

    mail to: tasklist.user.email
  end
end
